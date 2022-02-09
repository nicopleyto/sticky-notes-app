class StickyNotesController < ApplicationController
  before_action :set_sticky_note, only: %i[ show edit update destroy ]

  # GET /sticky_notes or /sticky_notes.json
  def index
    @sticky_notes = StickyNote.all
  end

  # GET /sticky_notes/1 or /sticky_notes/1.json
  def show
  end

  # GET /sticky_notes/new
  def new
    @sticky_note = StickyNote.new
  end

  # GET /sticky_notes/1/edit
  def edit
  end

  # POST /sticky_notes or /sticky_notes.json
  def create
    @sticky_note = StickyNote.new(sticky_note_params)

    respond_to do |format|
      if @sticky_note.save
        format.html { redirect_to sticky_note_url(@sticky_note), notice: "Sticky note was successfully created." }
        format.json { render :show, status: :created, location: @sticky_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sticky_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sticky_notes/1 or /sticky_notes/1.json
  def update
    respond_to do |format|
      if @sticky_note.update(sticky_note_params)
        format.html { redirect_to sticky_note_url(@sticky_note), notice: "Sticky note was successfully updated." }
        format.json { render :show, status: :ok, location: @sticky_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sticky_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sticky_notes/1 or /sticky_notes/1.json
  def destroy
    @sticky_note.destroy

    respond_to do |format|
      format.html { redirect_to sticky_notes_url, notice: "Sticky note was successfully destroyed." }
      format.json { head :no_content }
    end
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
