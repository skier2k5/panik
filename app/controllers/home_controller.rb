class HomeController < TrackedController
  def index
    case Client.current.name
    when 'celebheadlines'
      @headlines = CelebHeadline.all.order(:posted_at)
    end
  end

  def about
  end

  def contact
  end

  def privacy
  end
end
