class Kutorable::HomeController < TrackedController
  def random_animal_picture
    picture = AnimalPicture.all.order("rand()").first
    random_picture = {
      :id => picture.id,
      :file_name => picture.file_name,
      :voting_aggregate => picture.voting_aggregate,
      :source => picture.source,
      :source_url => picture.source_url,
    }

    render :json => random_picture
  end
end
