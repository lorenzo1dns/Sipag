require 'spec_helper'

describe "lots/show" do
  before(:each) do
    @lot = assign(:lot, stub_model(Lot,
      :name => "Name",
      :descripcion => "MyText",
      :area => 1.5,
      :unidadmedida => "Unidadmedida",
      :region_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1.5/)
    rendered.should match(/Unidadmedida/)
    rendered.should match(/1/)
  end
end
