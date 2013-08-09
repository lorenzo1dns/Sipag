require 'spec_helper'

describe "sicks/edit" do
  before(:each) do
    @sick = assign(:sick, stub_model(Sick,
      :nombre => "MyString",
      :descripcion => "MyText",
      :familia => "MyString",
      :danio => "MyText"
    ))
  end

  it "renders the edit sick form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sicks_path(@sick), :method => "post" do
      assert_select "input#sick_nombre", :name => "sick[nombre]"
      assert_select "textarea#sick_descripcion", :name => "sick[descripcion]"
      assert_select "input#sick_familia", :name => "sick[familia]"
      assert_select "textarea#sick_danio", :name => "sick[danio]"
    end
  end
end
