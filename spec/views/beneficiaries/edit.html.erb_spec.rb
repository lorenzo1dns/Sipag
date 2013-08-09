require 'spec_helper'

describe "beneficiaries/edit" do
  before(:each) do
    @beneficiary = assign(:beneficiary, stub_model(Beneficiary,
      :name => "MyString",
      :direccion => "MyText",
      :telefono => "MyString"
    ))
  end

  it "renders the edit beneficiary form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => beneficiaries_path(@beneficiary), :method => "post" do
      assert_select "input#beneficiary_name", :name => "beneficiary[name]"
      assert_select "textarea#beneficiary_direccion", :name => "beneficiary[direccion]"
      assert_select "input#beneficiary_telefono", :name => "beneficiary[telefono]"
    end
  end
end
