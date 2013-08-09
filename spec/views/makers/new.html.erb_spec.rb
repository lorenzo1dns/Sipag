require 'spec_helper'

describe "makers/new" do
  before(:each) do
    assign(:maker, stub_model(Maker,
      :nombre => "MyString",
      :descripcion => "MyText",
      :pais => "MyString"
    ).as_new_record)
  end

  it "renders new maker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => makers_path, :method => "post" do
      assert_select "input#maker_nombre", :name => "maker[nombre]"
      assert_select "textarea#maker_descripcion", :name => "maker[descripcion]"
      assert_select "input#maker_pais", :name => "maker[pais]"
    end
  end
end
