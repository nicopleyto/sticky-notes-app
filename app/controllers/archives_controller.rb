class ArchivesController < ApplicationController
  def index
    @sticky_notes = StickyNote.all
  end
end
