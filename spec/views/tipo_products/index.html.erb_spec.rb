require 'spec_helper'

describe "tipo_products/index" do
  before(:each) do
    assign(:tipo_products, [
      stub_model(TipoProduct,
        :name => "Name",
        :descripcion => "Descripcion"
      ),
      stub_model(TipoProduct,
        :name => "Name",
        :descripcion => "Descripcion"
      )
    ])
  end

  it "renders a list of tipo_products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
  end
end
