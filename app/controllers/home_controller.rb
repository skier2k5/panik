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

  def images_voting
    @picture = AnimalPicture.all.order("rand()").first
  end

  def celebheadlines_index
    @headlines = CelebHeadline.all.order(:posted_at)
  end

  def kutorable_index
    @picture = AnimalPicture.all.order("rand()").first
    @current_arrival = current_arrival
  end

  def panikmedia_index
  end
end
