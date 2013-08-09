require 'spec_helper'

describe "beneficiaries/index" do
  before(:each) do
    assign(:beneficiaries, [
      stub_model(Beneficiary,
        :name => "Name",
        :direccion => "MyText",
        :telefono => "Telefono"
      ),
      stub_model(Beneficiary,
        :name => "Name",
        :direccion => "MyText",
        :telefono => "Telefono"
      )
    ])
  end

  it "renders a list of beneficiaries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
  end
end
