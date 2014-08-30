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
    @picture = AnimalPicture.find_by_id(ap_id) || AnimalPicture.joins("LEFT JOIN animal_votes av ON av.animal_picture_id = animal_pictures.id AND av.arrival_id = #{current_arrival.id}")
        .where("av.id IS NULL")
        .order("rand()").first
    @current_arrival = current_arrival
    @source = @picture.try(:source) || "missing"
  end

  def panikmedia_index
  end
end
