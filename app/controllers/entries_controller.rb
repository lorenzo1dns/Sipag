class EntriesController < ApplicationController
  # GET /entries
  # GET /entries.json
  def index
    @entries = Entry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entries }
    end
  end
 
  # GET /entries/1
  # GET /entries/1.json
  def show
    @entry = Entry.find(params[:id])
    entrada = ComprobanteEntrada.new.to_pdf(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.pdf { 
        send_data entrada, :filename => "ComprobanteEntrada.pdf", :type => "application/pdf", :disposition => "inline"
      }
      format.json { render json: @entry }
    end
  end

  # GET /entries/new
  # GET /entries/new.json
  def new
     @ajax_search = params[:ajax_search] == "true" ? true : false
     @por_product = params[:por_product] == "true" ? true : false

    @entry = Entry.new
    @beneficiaries = Beneficiary.all    
    1.times {@entry.invoices.build}

    if @por_product == true
      @productos = Product.find(params[:idProd])
    end

    if @ajax_search == true 
      @beneficiary = Beneficiary.last
    else 
      @beneficiary = Beneficiary.new
    end
    respond_to do |format|
      format.html # new.html.erb
      format.js   # new.js.erb
      format.json { render json: @entry }
    end
  end

  

  # GET /entries/1/edit
  def edit
    @entry = Entry.find(params[:id])
  end

  # POST /entries
  # POST /entries.json
  def create
    
    Entry.transaction do
    
        @entry = Entry.new(params[:entry])
      
         raise "Debe agregar Productos" if (params[:invoice_products].nil? )
          #si no trae productos que haga rollback

         
         @entry.save
         @entry = Entry.last
         params[:invoices].each {|invoice|  
                @inv = Invoice.new(invoice)
                 @inv.entry_id = @entry.id        
                 @inv.save

                
                 @inv = Invoice.last
                  params[:invoice_products].each {|prod| 
                    @invoProd = InvoiceProduct.new(prod)
                    @invoProd.invoice_id = @inv.id
                    @invoProd.save                  

                  }
            }
          params[:invoice_products].each {|entryProd| 

              entryProd.delete(:coin_id)
              entryProd.delete(:total)
              entryProd.delete(:precio)
              entryProd.delete(:totalLempiras)


               @entradaProd = EntryProduct.new(entryProd)
               @entradaProd.entry_id =  @entry.id
               @entradaProd.save
               invent = Inventary.arel_table

              @inventario = Inventary.find_by(product_id: entryProd[:product_id])
              #Inventary.where(invent[:product_id].eq(entryProd[:product_id]).and(invent[:unidad].eq(entryProd[:unidad])).and(invent[:valorUnidad].eq(entryProd[:valorUnidad])))

              if !(@inventario.nil?)
                @inventario.cantidad+=  entryProd[:cantidad].to_f
                @inventario.save
              else
                @inventario = Inventary.new(product_id: entryProd[:product_id], unidad: entryProd[:unidad],
                                           cantidad: entryProd[:cantidad], valorUnidad: entryProd[:valorUnidad])
                @inventario.save
              end
          }
                   
           
            
            
            respond_to do |format| 
              
              format.html { redirect_to entry_path(@entry,:format => "pdf") }
                
            end
        end
        rescue 
          respond_to do |format|  
             format.html { redirect_to new_entry_path, notice: $!.message }
              format.json { render json: @entry.errors, status: :unprocessable_entity }
          end
        
    end


  # PUT /entries/1
  # PUT /entries/1.json
  def update
    @entry = Entry.find(params[:id])

    respond_to do |format|
      if @entry.update_attributes(params[:entry])
        format.html { redirect_to @entry, notice: 'Entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    respond_to do |format|
      format.html { redirect_to entries_url }
      format.json { head :no_content }
    end
  end
end
