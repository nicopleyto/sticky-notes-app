class StickyNotesController < ApplicationController
  before_action :set_sticky_note, only: %i[ show edit update destroy ]

  # GET /sticky_notes
  def index
    @sticky_notes = StickyNote.all
  end

  # GET /sticky_notes/1
  def show; end

  # GET /sticky_notes/new
  def new
    @sticky_note = StickyNote.new
  end

  # GET /sticky_notes/1/edit
  def edit; end

  # POST /sticky_notes
  def create
    @sticky_note = StickyNote.new(sticky_note_params)

    if @sticky_note.save
      redirect_to sticky_note_url(@sticky_note), notice: "Sticky note was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /sticky_notes/1
  def update
    if @sticky_note.update(sticky_note_params)
      redirect_to sticky_note_url(@sticky_note), notice: "Sticky note was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /sticky_notes/1 or /sticky_notes/1.json
  def destroy
    @sticky_note.destroy
    redirect_to sticky_notes_url, notice: "Sticky note was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sticky_note
      @sticky_note = StickyNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sticky_note_params
      params.require(:sticky_note).permit(:title, :body)
    end
end
