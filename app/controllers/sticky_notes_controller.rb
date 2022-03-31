class StickyNotesController < ApplicationController
  before_action :set_sticky_note, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  def index
    @sticky_notes = current_user.sticky_notes
  end

  def show; end

  def new
    @sticky_note = current_user.sticky_notes.build
  end

  def edit; end

  def create
    @sticky_note = current_user.sticky_notes.build(sticky_note_params)

    if @sticky_note.save
      redirect_to sticky_note_url(@sticky_note), notice: "Sticky note was successfully created."
    else
      render :new
    end
  end

  def update
    if @sticky_note.update(sticky_note_params)
      redirect_to sticky_note_url(@sticky_note), notice: "Sticky note was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @sticky_note.destroy
    redirect_to sticky_notes_url, notice: "Sticky note was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sticky_note
      @sticky_note = current_user.sticky_notes.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sticky_note_params
      params.require(:sticky_note).permit(:title, :body)
    end
end
