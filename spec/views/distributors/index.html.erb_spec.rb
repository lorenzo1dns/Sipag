require 'spec_helper'

describe "distributors/index" do
  before(:each) do
    assign(:distributors, [
      stub_model(Distributor,
        :nombre => "Nombre",
        :direccion => "Direccion",
        :telefono => "Telefono"
      ),
      stub_model(Distributor,
        :nombre => "Nombre",
        :direccion => "Direccion",
        :telefono => "Telefono"
      )
    ])
  end

  it "renders a list of distributors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
  end
end
