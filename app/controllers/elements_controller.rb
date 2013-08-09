class ElementsController < ApplicationController
  before_filter :signed_in_user

  helper_method :sort_column, :sort_direction
  # GET /elements
  # GET /elements.json
  def index
    @ajax_search = params[:ajax_search] == "true" ? true : false
    puts "sort_direction = " + sort_direction

    @elements = Element.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 10)
    

    respond_to do |format|
      format.html # index.html.erb     
       format.js   # index.js.erb
      format.json { render json: @elements }
    end
  end

  # GET /elements/1
  # GET /elements/1.json

  # GET /elements/new
  # GET /elements/new.json
  def new
    @element = Element.new

    respond_to do |format|
      format.html # new.html.erb
      format.js   # new.js.erb
      format.json { render json: @element }
    end
  end

  # GET /elements/1/edit
  def edit
    @element = Element.find(params[:id])
  end

  # POST /elements
  # POST /elements.json
  def create
    @element = Element.new(params[:element])

    respond_to do |format|
      if @element.save
        format.html { redirect_to elements_path, notice: 'Element was successfully created.' } 
        format.js { flash[:info]="Elemento creado con exito." }               
        format.json { render json: elements_path, status: :created, location: @element }
      else
        format.html { render action: "new" }
        format.json { render json: @element.errors, status: :unprocessable_entity }
      end
    end
  end

 
  # PUT /elements/1
  # PUT /elements/1.json
  def update
    @element = Element.find(params[:id])

    respond_to do |format|
      if @element.update_attributes(params[:element])
        format.html { redirect_to elements_path, notice: 'Elemento editado correctamente.' }
        format.js { flash.now[:info]='Elemento Actualizado con exito' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elements/1
  # DELETE /elements/1.json
  def destroy
    @element = Element.find(params[:id])
    @element.destroy
    @elements = Element.order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 10)
    respond_to do |format|
      format.html { redirect_to elements_url }
      format.json { head :no_content }
      format.js { flash.now[:info]='Elemento eliminado correctamente' }
    end
  end

private  
  def sort_column
    # column varmi diye kontrol ediliyor, yoksa name default   
    Element.column_names.include?(params[:sort]) ? params[:sort] : "nombre"   
  end  
 
  # sort icin default direction asc
  def sort_direction
    # karakter kontrol yapiliyor security icin  
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"    
  end  



end
