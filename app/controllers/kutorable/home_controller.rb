class Kutorable::HomeController < TrackedController
  protect_from_forgery
  def random_animal_picture
    render :json => AnimalPicture.all.order("rand()").first
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
