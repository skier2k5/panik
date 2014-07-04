class PanikMedia::IndexController < TrackedController
  def index
    return render :json => Client.current
  end
end
