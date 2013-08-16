class LotsController < ApplicationController
#  before_action :set_lot, only: [:show, :edit, :update, :destroy]

  # GET /lots
  def index
    @ajax_search = params[:ajax_search] == "true" ? true : false
    @lots = Lot.search(params[:search]).paginate(per_page: 10, page: params[:page])
     
    respond_to do |format|

       format.html # index.html.erb
       format.js   # index.js.erb
       format.json { render json: @lots }
    end
  end

  # GET /lots/1
  def show
     @lot = Lot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lot }
    end
  end

  # GET /lots/new
  def new
    @lot = Lot.new

   respond_to do |format|
      format.html # new.html.erb
      format.js
      format.json { render json: @lot }
    end
  end

  # GET /lots/1/edit
  def edit

    @lot = Lot.find(params[:id])
     respond_to do |format|
      format.html # new.html.erb
      format.js
      format.json { render json: @lot }
    end
  end

  # POST /lots
  def create
    @lot = Lot.new(params[:lot])

   
    respond_to do |format|
      if @lot.save
        format.html { redirect_to lots_path, notice: 'Lote fue guardado correctamente' }
         format.js  { flash.now[:info]='Elemento creado con exito'}
        format.json { render json: @lot, status: :created, location: @lot }
      else
        format.html { render action: "new" }
        format.json { render json: @lot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lots/1
  def update
   
 @lot = Lot.find(params[:id])

    respond_to do |format|
      if @lot.update_attributes(params[:lot])
        format.html { redirect_to @lot, notice: 'Lote was successfully updated.' }
        format.js  { flash.now[:info]='Elemento Actualizado con exito'}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lot.errors, status: :unprocessable_entity }
      end
    end
 end
  # DELETE /lots/1
def destroy
    @lot = Lot.find(params[:id])
    @lot.destroy
    @lots = Lot.search(params[:search]).paginate(per_page: 5, page: params[:page])
    
    respond_to do |format|
      format.html { redirect_to lots_url }
      format.json { head :no_content }
      format.js { flash.now[:info]='Elemento eliminado correctamente' }
    end
  end


private
    # Use callbacks to share common setup or constraints between actions.
    def set_lot
      @lot = Lot.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lot_params
      params.require(:lot).permit(:name, :descripcion, :area, :unidadmedida, :region_id)
    end
end
