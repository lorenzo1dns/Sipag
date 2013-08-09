require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
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
      ),
      stub_model(Product,
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
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Presentacion".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo Producto".to_s, :count => 2
    assert_select "tr>td", :text => "Ingrediente Activo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Modo Accion".to_s, :count => 2
    assert_select "tr>td", :text => "Toxicidad".to_s, :count => 2
    assert_select "tr>td", :text => "Antidoto".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
