class PublicStickyNotesController < ApplicationController
  def index
    @sticky_notes = StickyNote.all
  end

  def show
    @sticky_note = StickyNote.find(params[:id])
  end
end
