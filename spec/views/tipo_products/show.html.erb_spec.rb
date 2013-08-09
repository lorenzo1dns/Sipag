require 'spec_helper'

describe "tipo_products/show" do
  before(:each) do
    @tipo_product = assign(:tipo_product, stub_model(TipoProduct,
      :name => "Name",
      :descripcion => "Descripcion"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Descripcion/)
  end
end
