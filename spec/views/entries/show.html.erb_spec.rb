require 'spec_helper'

describe "entries/show" do
  before(:each) do
    @entry = assign(:entry, stub_model(Entry,
      :beneficiary_id => 1,
      :tipoEntrada => "Tipo Entrada",
      :output_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Tipo Entrada/)
    rendered.should match(/2/)
  end
end
