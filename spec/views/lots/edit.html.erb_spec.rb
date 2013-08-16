require 'spec_helper'

describe "lots/edit" do
  before(:each) do
    @lot = assign(:lot, stub_model(Lot,
      :name => "MyString",
      :descripcion => "MyText",
      :area => 1.5,
      :unidadmedida => "MyString",
      :region_id => 1
    ))
  end

  it "renders the edit lot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lot_path(@lot), "post" do
      assert_select "input#lot_name[name=?]", "lot[name]"
      assert_select "textarea#lot_descripcion[name=?]", "lot[descripcion]"
      assert_select "input#lot_area[name=?]", "lot[area]"
      assert_select "input#lot_unidadmedida[name=?]", "lot[unidadmedida]"
      assert_select "input#lot_region_id[name=?]", "lot[region_id]"
    end
  end
end
