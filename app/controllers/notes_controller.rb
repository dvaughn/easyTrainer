class NotesController < ApplicationController
  def create
    aid = session[:athlete_id]
    text = params[:note][:text]
    color = params[:note][:color]
    @note = Athlete.find(aid).notes.create(:text => text, :color => color)
  end

  def delete
    nid = params[:note][:id]
    Note.find(nid).destroy
  end
end
