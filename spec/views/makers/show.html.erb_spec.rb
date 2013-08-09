require 'spec_helper'

describe "makers/show" do
  before(:each) do
    @maker = assign(:maker, stub_model(Maker,
      :nombre => "Nombre",
      :descripcion => "MyText",
      :pais => "Pais"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/MyText/)
    rendered.should match(/Pais/)
  end
end
