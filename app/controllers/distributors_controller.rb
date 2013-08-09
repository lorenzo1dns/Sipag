class DistributorsController < ApplicationController
  before_filter :signed_in_user
  # GET /distributors
  # GET /distributors.json
  def index
    @distributors = Distributor.search(params[:search]).paginate(per_page: 15, page: params[:page])
     @distributor = Distributor.new
     
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @distributors }
    end
  end

  # GET /distributors/1
  # GET /distributors/1.json
  def show
    @distributor = Distributor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @distributor }
    end
  end

  # GET /distributors/new
  # GET /distributors/new.json
  def new
    @distributor = Distributor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @distributor }
    end
  end

  # GET /distributors/1/edit
  def edit
    @distributor = Distributor.find(params[:id])
  end

  # POST /distributors
  # POST /distributors.json
  def create
    @distributor = Distributor.new(params[:distributor])

    respond_to do |format|
      if @distributor.save
        format.html { redirect_to distributors_path, notice: 'Distribuidor creado correctamente' }
        format.json { render json: distributors_path, status: :created, location: distributors_path }
      else
        format.html { render action: "new" }
        format.json { render json: @distributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /distributors/1
  # PUT /distributors/1.json
  def update
    @distributor = Distributor.find(params[:id])

    respond_to do |format|
      if @distributor.update_attributes(params[:distributor])
        format.html { redirect_to distributors_path, notice: 'Distribuidor editado correctamente' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @distributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distributors/1
  # DELETE /distributors/1.json
  def destroy
    @distributor = Distributor.find(params[:id])
    @distributor.destroy

    respond_to do |format|
      format.html { redirect_to distributors_url }
      format.json { head :no_content }
    end
  end
end
