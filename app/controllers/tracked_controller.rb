class TrackedController < ApplicationController
  before_filter :create_pageview

  def create_pageview
    Pageview.create(:arrival => current_arrival, :uri => request.fullpath[0...255])
  end

  def current_pageview
    @current_pageview ||= current_arrival.pageviews.order("created_at DESC").first
  end

  def current_arrival
    return @current_arrival if @current_arrival

    if session[:last_seen] < Time.now.to_i - 86400
      session[:arrival_id] = nil
      session[:last_seen] = nil
    end

    user_agent = request.env['HTTP_USER_AGENT'].nil? ? nil : request.env['HTTP_USER_AGENT'].unpack("C*").pack("U*")
    referer = request.env['HTTP_REFERER'].nil? ? nil : request.env['HTTP_REFERER'].unpack("C*").pack("U*")
    ip = request.remote_ip
    ts_id = TrafficSource.find_by_id(params[:tsid]).try(:id)


    if ts_id ||
        !(@current_arrival = Arrival.find_recent_for_user(session[:arrival_id], user_agent, ip))
      @current_arrival = Arrival.create(
        :uri => request.fullpath,
        :ip => ip,
        :traffic_source_id => ts_id,
        :referer => referer,
        :user_agent => user_agent,
        :client_id => Client.current.id
      )
    end

    session[:arrival_id] = @current_arrival.id
    session[:last_seen] = Time.now.to_i

    @current_arrival
  end
end
