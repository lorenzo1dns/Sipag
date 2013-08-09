require 'spec_helper'

describe "coins/index" do
  before(:each) do
    assign(:coins, [
      stub_model(Coin,
        :moneda => "Moneda",
        :pais => "Pais",
        :simbolo => "Simbolo",
        :valorLocal => 1.5
      ),
      stub_model(Coin,
        :moneda => "Moneda",
        :pais => "Pais",
        :simbolo => "Simbolo",
        :valorLocal => 1.5
      )
    ])
  end

  it "renders a list of coins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Moneda".to_s, :count => 2
    assert_select "tr>td", :text => "Pais".to_s, :count => 2
    assert_select "tr>td", :text => "Simbolo".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
