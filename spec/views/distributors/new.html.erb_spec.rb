require 'spec_helper'

describe "distributors/new" do
  before(:each) do
    assign(:distributor, stub_model(Distributor,
      :nombre => "MyString",
      :direccion => "MyString",
      :telefono => "MyString"
    ).as_new_record)
  end

  it "renders new distributor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => distributors_path, :method => "post" do
      assert_select "input#distributor_nombre", :name => "distributor[nombre]"
      assert_select "input#distributor_direccion", :name => "distributor[direccion]"
      assert_select "input#distributor_telefono", :name => "distributor[telefono]"
    end
  end
end
