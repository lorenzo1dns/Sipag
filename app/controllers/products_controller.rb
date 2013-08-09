class ProductsController < ApplicationController
  before_filter :signed_in_user
  # GET /products
  # GET /products.json
  def index
    @products = Product.search(params[:search]).paginate(per_page: 15, page: params[:page])
    @tipo_products = TipoProduct.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

 
  def toEntry
    @products = Product.all 
    respond_to do |format|
      format.html # index.html.erb
      format.js {}
      format.json { render json: @products }
    end
  end

  def llevar
    @idProd = params[:idProd]
    respond_to do |format|
      
      format.js {}
      
    end
  end
 # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new
    #2.times {@product.formulations.build}
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])
    if !(params[:formulations].nil? )
     params[:formulations].each {|formulation| @product.formulations.build(formulation) }
   end
   if !(params[:doses].nil? )
     params[:doses].each {|dose| @product.doses.build(dose) }
   end

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])
     Formulation.where('product_id  = ?', "#{params[:id]}").delete_all
     Dose.where('product_id  = ?', "#{params[:id]}").delete_all

     if !(params[:formulations].nil? )
      params[:formulations].each {|formulation| @product.formulations.build(formulation) }
    end
    if !(params[:doses].nil? )
     params[:doses].each {|dose| @product.doses.build(dose) }
   end
    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    Formulation.where('product_id  = ?', "#{params[:id]}").delete_all
     Dose.where('product_id  = ?', "#{params[:id]}").delete_all
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
end
