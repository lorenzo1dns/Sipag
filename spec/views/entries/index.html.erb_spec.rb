require 'spec_helper'

describe "entries/index" do
  before(:each) do
    assign(:entries, [
      stub_model(Entry,
        :beneficiary_id => 1,
        :tipoEntrada => "Tipo Entrada",
        :output_id => 2
      ),
      stub_model(Entry,
        :beneficiary_id => 1,
        :tipoEntrada => "Tipo Entrada",
        :output_id => 2
      )
    ])
  end

  it "renders a list of entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Tipo Entrada".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
