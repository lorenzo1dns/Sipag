require 'spec_helper'

describe "sicks/new" do
  before(:each) do
    assign(:sick, stub_model(Sick,
      :nombre => "MyString",
      :descripcion => "MyText",
      :familia => "MyString",
      :danio => "MyText"
    ).as_new_record)
  end

  it "renders new sick form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sicks_path, :method => "post" do
      assert_select "input#sick_nombre", :name => "sick[nombre]"
      assert_select "textarea#sick_descripcion", :name => "sick[descripcion]"
      assert_select "input#sick_familia", :name => "sick[familia]"
      assert_select "textarea#sick_danio", :name => "sick[danio]"
    end
  end
end
