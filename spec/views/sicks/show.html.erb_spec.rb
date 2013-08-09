require 'spec_helper'

describe "sicks/show" do
  before(:each) do
    @sick = assign(:sick, stub_model(Sick,
      :nombre => "Nombre",
      :descripcion => "MyText",
      :familia => "Familia",
      :danio => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/MyText/)
    rendered.should match(/Familia/)
    rendered.should match(/MyText/)
  end
end
