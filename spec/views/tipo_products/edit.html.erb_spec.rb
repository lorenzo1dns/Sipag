require 'spec_helper'

describe "tipo_products/edit" do
  before(:each) do
    @tipo_product = assign(:tipo_product, stub_model(TipoProduct,
      :name => "MyString",
      :descripcion => "MyString"
    ))
  end

  it "renders the edit tipo_product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_products_path(@tipo_product), :method => "post" do
      assert_select "input#tipo_product_name", :name => "tipo_product[name]"
      assert_select "input#tipo_product_descripcion", :name => "tipo_product[descripcion]"
    end
  end
end
