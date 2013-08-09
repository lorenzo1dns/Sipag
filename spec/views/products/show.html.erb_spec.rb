require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :nombre => "Nombre",
      :descripcion => "MyText",
      :presentacion => "Presentacion",
      :tipoProducto => "Tipo Producto",
      :ingredienteActivo => "Ingrediente Activo",
      :compatibilidad => "MyText",
      :modoAccion => "Modo Accion",
      :toxicidad => "Toxicidad",
      :antidoto => "Antidoto",
      :maker_id => 1,
      :distributor_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/MyText/)
    rendered.should match(/Presentacion/)
    rendered.should match(/Tipo Producto/)
    rendered.should match(/Ingrediente Activo/)
    rendered.should match(/MyText/)
    rendered.should match(/Modo Accion/)
    rendered.should match(/Toxicidad/)
    rendered.should match(/Antidoto/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
