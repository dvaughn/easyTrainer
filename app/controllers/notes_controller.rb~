class NotesController < ApplicationController
  def create
    aid = session[:athlete_id]
    text = params[:note][:text]
    @note = Athlete.find(aid).notes.create(:text => text)
  end

  def delete
    nid = params[:note][:id]
    Note.find(nid).destroy
  end
end
