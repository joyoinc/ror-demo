require 'spec_helper'

describe "photos/show" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :token => "Token",
      :tags => "Tags",
      :data => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Token/)
    rendered.should match(/Tags/)
    rendered.should match(//)
  end
end
