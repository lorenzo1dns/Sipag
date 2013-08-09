require 'spec_helper'

describe "coins/show" do
  before(:each) do
    @coin = assign(:coin, stub_model(Coin,
      :moneda => "Moneda",
      :pais => "Pais",
      :simbolo => "Simbolo",
      :valorLocal => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Moneda/)
    rendered.should match(/Pais/)
    rendered.should match(/Simbolo/)
    rendered.should match(/1.5/)
  end
end
