class SicksController < ApplicationController
  before_filter :signed_in_user
  # GET /sicks
  # GET /sicks.json
  def index
    @sicks = Sick.search(params[:search]).paginate(per_page: 15, page: params[:page])
    @sick = Sick.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sicks.map(&:attributes) } 
    end
  end

  # GET /sicks/1
  # GET /sicks/1.json
  def show
    @sick = Sick.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sick }
    end
  end

  # GET /sicks/new
  # GET /sicks/new.json
  def new
    @sick = Sick.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sick }
    end
  end

  # GET /sicks/1/edit
  def edit
    @sick = Sick.find(params[:id])
  end

  # POST /sicks
  # POST /sicks.json
  def create
    @sick = Sick.new(params[:sick])

    respond_to do |format|
      if @sick.save
        format.html { redirect_to sicks_path, notice: 'Enfermedad creada correctamente' }
        format.json { render json: sicks_path, status: :created, location: @sicks }
      else
        format.html { render action: "new" }
        format.json { render json: @sick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sicks/1
  # PUT /sicks/1.json
  def update
    @sick = Sick.find(params[:id])

    respond_to do |format|
      if @sick.update_attributes(params[:sick])
        format.html { redirect_to sicks_path, notice: 'Enfermedad Editada Correctamente' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sicks/1
  # DELETE /sicks/1.json
  def destroy
    @sick = Sick.find(params[:id])
    @sick.destroy

    respond_to do |format|
      format.html { redirect_to sicks_url }
      format.json { head :no_content }
    end
  end
end
