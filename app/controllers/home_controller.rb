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

  def celebheadlines_index
    @headlines = CelebHeadline.all.order(:posted_at)
  end

  def kutorable_index
    @picture = AnimalPicture.all.order("rand()").first
  end

  def panikmedia_index
  end
end