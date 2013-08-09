require 'spec_helper'

describe "elements/show" do
  before(:each) do
    @element = assign(:element, stub_model(Element,
      :nombre => "Nombre",
      :descripcion => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/MyText/)
  end
end
