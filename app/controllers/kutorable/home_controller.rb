class Kutorable::HomeController < TrackedController
  def random_animal_picture
    render :json => AnimalPicture.all.order("rand()").first
  end
end
