require 'spec_helper'

describe "beneficiaries/new" do
  before(:each) do
    assign(:beneficiary, stub_model(Beneficiary,
      :name => "MyString",
      :direccion => "MyText",
      :telefono => "MyString"
    ).as_new_record)
  end

  it "renders new beneficiary form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => beneficiaries_path, :method => "post" do
      assert_select "input#beneficiary_name", :name => "beneficiary[name]"
      assert_select "textarea#beneficiary_direccion", :name => "beneficiary[direccion]"
      assert_select "input#beneficiary_telefono", :name => "beneficiary[telefono]"
    end
  end
end
