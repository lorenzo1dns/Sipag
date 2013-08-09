require 'spec_helper'

describe "beneficiaries/show" do
  before(:each) do
    @beneficiary = assign(:beneficiary, stub_model(Beneficiary,
      :name => "Name",
      :direccion => "MyText",
      :telefono => "Telefono"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Telefono/)
  end
end
