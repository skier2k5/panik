class IndexController < TrackedController
  def index
    case Client.current.name
    when 'celebheadlines'
      @headlines = CelebHeadline.all.order(:posted_at)
    end
  end
end
