require 'spec_helper'

describe "makers/index" do
  before(:each) do
    assign(:makers, [
      stub_model(Maker,
        :nombre => "Nombre",
        :descripcion => "MyText",
        :pais => "Pais"
      ),
      stub_model(Maker,
        :nombre => "Nombre",
        :descripcion => "MyText",
        :pais => "Pais"
      )
    ])
  end

  it "renders a list of makers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Pais".to_s, :count => 2
  end
end
