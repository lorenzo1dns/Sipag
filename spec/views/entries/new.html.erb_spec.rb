require 'spec_helper'

describe "entries/new" do
  before(:each) do
    assign(:entry, stub_model(Entry,
      :beneficiary_id => 1,
      :tipoEntrada => "MyString",
      :output_id => 1
    ).as_new_record)
  end

  it "renders new entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => entries_path, :method => "post" do
      assert_select "input#entry_beneficiary_id", :name => "entry[beneficiary_id]"
      assert_select "input#entry_tipoEntrada", :name => "entry[tipoEntrada]"
      assert_select "input#entry_output_id", :name => "entry[output_id]"
    end
  end
end
