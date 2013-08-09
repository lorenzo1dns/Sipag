class PlaguesController < ApplicationController
  before_filter :signed_in_user
  def new
  	@plague = Plague.new
  end
  
  def index
    @plagues = Plague.search(params[:search]).paginate(per_page: 15, page: params[:page])
    @plague = Plague.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plagues.map(&:attributes) }
    end

  end

  def show
  	@plague = Plague.find(params[:id])
     respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plague }
    end
  end

  def edit

    @plague = Plague.find(params[:id])
  end

  def create
  	@plague = Plague.new(params[:plague])
  	if @plague.save
       flash.now[:success] = "Plaga creada correctamente"
      	redirect_to plagues_path
  	else
  		render 'new'
  	end
  end

    def update
      @plague = Plague.find(params[:id])
      if @plague.update_attributes(params[:plague])
        flash.now[:success]= "Editado"
        redirect_to plagues_path
      else
        render 'edit'
      end
    end

    def destroy
    Plague.find(params[:id]).destroy
    flash[:success] = "Plaga eliminada"
    redirect_to plagues_url
  end
end
