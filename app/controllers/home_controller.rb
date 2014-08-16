class HomeController < TrackedController
  def index
    client = Client.current.name.gsub "-", ""
    public_send "#{client}_index"
  end

  def about
  end

  def contact
  end

  def privacy
  end

  def agreement
  end

  def celebheadlines_index
    @headlines = CelebHeadline.all.order(:posted_at)
  end

  def kutorable_index
    ap_id = params['apid'].presence
    @picture = AnimalPicture.find_by_id(ap_id) || AnimalPicture.all.order("rand()").first
    @current_arrival = current_arrival
    @source = @picture.source || "missing"
  end

  def panikmedia_index
  end
end
