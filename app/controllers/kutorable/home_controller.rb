class Kutorable::HomeController < TrackedController
  protect_from_forgery
  def random_animal_picture
    picture = AnimalPicture.joins("LEFT JOIN animal_votes av ON av.animal_picture_id = animal_pictures.id AND av.arrival_id = #{current_arrival.id}")
        .where("av.id IS NULL")
        .order("rand()").first
    if picture
      random_picture = {
        :id => picture.id,
        :file_name => picture.file_name,
        :voting_aggregate => picture.voting_aggregate,
        :source => picture.source,
        :source_url => picture.source_url,
      }
    else
      random_picture = {
        :id => 0,
        :file_name => "end_image.jpg",
        :voting_aggregate => nil,
        :source => nil,
        :source_url => nil,
      }
    end

    render :json => random_picture
  end

  def mailing_list_sign_up
    @email = Email.create :email => params[:email].presence,
                          :client_id => Client.current.id,
                          :arrival_id => current_arrival.id 
    render :text => "OK"
  end
end
