class TipoProductsController < ApplicationController
  before_filter :signed_in_user
  # GET /tipo_products
  # GET /tipo_products.json
  def index
    @tipo_products = TipoProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_products }
    end
  end

  # GET /tipo_products/1
  # GET /tipo_products/1.json
  def show
    @tipo_product = TipoProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_product }
    end
  end

  # GET /tipo_products/new
  # GET /tipo_products/new.json
  def new
    @tipo_product = TipoProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_product }
    end
  end

  # GET /tipo_products/1/edit
  def edit
    @tipo_product = TipoProduct.find(params[:id])
  end

  # POST /tipo_products
  # POST /tipo_products.json
  def create
    @tipo_product = TipoProduct.new(params[:tipo_product])

    respond_to do |format|
      if @tipo_product.save
        format.html { redirect_to @tipo_product, notice: 'Tipo product was successfully created.' }
        format.json { render json: @tipo_product, status: :created, location: @tipo_product }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_products/1
  # PUT /tipo_products/1.json
  def update
    @tipo_product = TipoProduct.find(params[:id])

    respond_to do |format|
      if @tipo_product.update_attributes(params[:tipo_product])
        format.html { redirect_to @tipo_product, notice: 'Tipo product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_products/1
  # DELETE /tipo_products/1.json
  def destroy
    @tipo_product = TipoProduct.find(params[:id])
    @tipo_product.destroy

    respond_to do |format|
      format.html { redirect_to tipo_products_url }
      format.json { head :no_content }
    end
  end
end
