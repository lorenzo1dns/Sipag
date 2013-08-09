require 'spec_helper'

describe "distributors/edit" do
  before(:each) do
    @distributor = assign(:distributor, stub_model(Distributor,
      :nombre => "MyString",
      :direccion => "MyString",
      :telefono => "MyString"
    ))
  end

  it "renders the edit distributor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => distributors_path(@distributor), :method => "post" do
      assert_select "input#distributor_nombre", :name => "distributor[nombre]"
      assert_select "input#distributor_direccion", :name => "distributor[direccion]"
      assert_select "input#distributor_telefono", :name => "distributor[telefono]"
    end
  end
end
