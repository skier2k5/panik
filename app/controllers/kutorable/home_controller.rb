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
    end

    render :json => random_picture
  end

  def mailing_list_sign_up
    new_email = params[:email].presence
    email = Email.where(:email => new_email, :client_id => Client.current.id).first
    if email.nil?
      Email.create! :email => new_email,
                    :client_id => Client.current.id,
                    :arrival_id => current_arrival.id
    end
    render :text => "OK"
  end
end
