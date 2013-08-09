require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :nombre => "MyString",
      :descripcion => "MyText",
      :presentacion => "MyString",
      :tipoProducto => "MyString",
      :ingredienteActivo => "MyString",
      :compatibilidad => "MyText",
      :modoAccion => "MyString",
      :toxicidad => "MyString",
      :antidoto => "MyString",
      :maker_id => 1,
      :distributor_id => 1
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path, :method => "post" do
      assert_select "input#product_nombre", :name => "product[nombre]"
      assert_select "textarea#product_descripcion", :name => "product[descripcion]"
      assert_select "input#product_presentacion", :name => "product[presentacion]"
      assert_select "input#product_tipoProducto", :name => "product[tipoProducto]"
      assert_select "input#product_ingredienteActivo", :name => "product[ingredienteActivo]"
      assert_select "textarea#product_compatibilidad", :name => "product[compatibilidad]"
      assert_select "input#product_modoAccion", :name => "product[modoAccion]"
      assert_select "input#product_toxicidad", :name => "product[toxicidad]"
      assert_select "input#product_antidoto", :name => "product[antidoto]"
      assert_select "input#product_maker_id", :name => "product[maker_id]"
      assert_select "input#product_distributor_id", :name => "product[distributor_id]"
    end
  end
end
