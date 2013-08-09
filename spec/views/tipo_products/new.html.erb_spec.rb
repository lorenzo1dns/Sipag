require 'spec_helper'

describe "tipo_products/new" do
  before(:each) do
    assign(:tipo_product, stub_model(TipoProduct,
      :name => "MyString",
      :descripcion => "MyString"
    ).as_new_record)
  end

  it "renders new tipo_product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_products_path, :method => "post" do
      assert_select "input#tipo_product_name", :name => "tipo_product[name]"
      assert_select "input#tipo_product_descripcion", :name => "tipo_product[descripcion]"
    end
  end
end
