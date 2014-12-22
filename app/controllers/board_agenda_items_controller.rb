class BoardAgendaItemsController < ApplicationController
  before_action :set_board_agenda_item, only: [:show, :edit, :update, :destroy]

  # GET /board_agenda_items
  # GET /board_agenda_items.json
  def index
    @board_agenda_items = BoardAgendaItem.all
  end

  # GET /board_agenda_items/1
  # GET /board_agenda_items/1.json
  def show
  end

  # GET /board_agenda_items/new
  def new
    @board_agenda_item = BoardAgendaItem.new
  end

  # GET /board_agenda_items/1/edit
  def edit
  end

  # POST /board_agenda_items
  # POST /board_agenda_items.json
  def create
    @board_agenda_item = BoardAgendaItem.new(board_agenda_item_params)

    respond_to do |format|
      if @board_agenda_item.save
        format.html { redirect_to @board_agenda_item, notice: 'Board agenda item was successfully created.' }
        format.json { render :show, status: :created, location: @board_agenda_item }
      else
        format.html { render :new }
        format.json { render json: @board_agenda_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /board_agenda_items/1
  # PATCH/PUT /board_agenda_items/1.json
  def update
    respond_to do |format|
      if @board_agenda_item.update(board_agenda_item_params)
        format.html { redirect_to @board_agenda_item, notice: 'Board agenda item was successfully updated.' }
        format.json { render :show, status: :ok, location: @board_agenda_item }
      else
        format.html { render :edit }
        format.json { render json: @board_agenda_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /board_agenda_items/1
  # DELETE /board_agenda_items/1.json
  def destroy
    @board_agenda_item.destroy
    respond_to do |format|
      format.html { redirect_to board_agenda_items_url, notice: 'Board agenda item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board_agenda_item
      @board_agenda_item = BoardAgendaItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def board_agenda_item_params
      params.require(:board_agenda_item).permit(:description, :status, :position, :board_id)
    end
end
