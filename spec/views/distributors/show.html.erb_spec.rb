require 'spec_helper'

describe "distributors/show" do
  before(:each) do
    @distributor = assign(:distributor, stub_model(Distributor,
      :nombre => "Nombre",
      :direccion => "Direccion",
      :telefono => "Telefono"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/Direccion/)
    rendered.should match(/Telefono/)
  end
end
