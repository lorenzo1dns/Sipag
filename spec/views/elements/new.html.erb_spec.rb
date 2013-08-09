require 'spec_helper'

describe "elements/new" do
  before(:each) do
    assign(:element, stub_model(Element,
      :nombre => "MyString",
      :descripcion => "MyText"
    ).as_new_record)
  end

  it "renders new element form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => elements_path, :method => "post" do
      assert_select "input#element_nombre", :name => "element[nombre]"
      assert_select "textarea#element_descripcion", :name => "element[descripcion]"
    end
  end
end
