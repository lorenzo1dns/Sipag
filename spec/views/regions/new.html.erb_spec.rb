require 'spec_helper'

describe "regions/new" do
  before(:each) do
    assign(:region, stub_model(Region,
      :name => "MyString",
      :descripcion => "MyText"
    ).as_new_record)
  end

  it "renders new region form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => regions_path, :method => "post" do
      assert_select "input#region_name", :name => "region[name]"
      assert_select "textarea#region_descripcion", :name => "region[descripcion]"
    end
  end
end
