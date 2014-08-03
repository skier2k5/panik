class Kutorable::VotingController < UntrackedController
  def vote
    arrival_id = params[:aid].presence
    animal_picture_id = params[:apid].presence
    vote = params[:vote].presence

    if arrival_id && animal_picture_id && vote
      unless AnimalVote.find_by(:arrival_id => arrival_id, :animal_picture_id => animal_picture_id)
        aggregate = VotingAggregate.find_or_create_by(:animal_picture_id => animal_picture_id)
        case vote
        when 'cute'
          aggregate.cute_votes += 1
        when 'ugly'
          aggregate.ugly_votes += 1
        else
          return render :text => "Malformed Vote"
        end
        aggregate.save!

        AnimalVote.create :arrival_id => arrival_id,
                          :animal_picture_id => animal_picture_id,
                          :vote => vote

        return render :text => "OK"
      else
        return render :text => "Already Voted"
      end
    end

    render :text => "Blank Vote Data"
  end
end
