require 'spec_helper'

describe "lots/index" do
  before(:each) do
    assign(:lots, [
      stub_model(Lot,
        :name => "Name",
        :descripcion => "MyText",
        :area => 1.5,
        :unidadmedida => "Unidadmedida",
        :region_id => 1
      ),
      stub_model(Lot,
        :name => "Name",
        :descripcion => "MyText",
        :area => 1.5,
        :unidadmedida => "Unidadmedida",
        :region_id => 1
      )
    ])
  end

  it "renders a list of lots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Unidadmedida".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
