class Panik::IndexController < TrackedController
  def index
    return render :json => [current_arrival, current_pageview]
  end
end
