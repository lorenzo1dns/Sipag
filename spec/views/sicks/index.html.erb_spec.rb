require 'spec_helper'

describe "sicks/index" do
  before(:each) do
    assign(:sicks, [
      stub_model(Sick,
        :nombre => "Nombre",
        :descripcion => "MyText",
        :familia => "Familia",
        :danio => "MyText"
      ),
      stub_model(Sick,
        :nombre => "Nombre",
        :descripcion => "MyText",
        :familia => "Familia",
        :danio => "MyText"
      )
    ])
  end

  it "renders a list of sicks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Familia".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
