require 'spec_helper'

describe "photos/index" do
  before(:each) do
    assign(:photos, [
      stub_model(Photo,
        :token => "Token",
        :tags => "Tags",
        :data => ""
      ),
      stub_model(Photo,
        :token => "Token",
        :tags => "Tags",
        :data => ""
      )
    ])
  end

  it "renders a list of photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Token".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
