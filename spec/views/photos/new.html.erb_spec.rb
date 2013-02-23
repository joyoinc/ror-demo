require 'spec_helper'

describe "photos/new" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :token => "MyString",
      :tags => "MyString",
      :data => ""
    ).as_new_record)
  end

  it "renders new photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => photos_path, :method => "post" do
      assert_select "input#photo_token", :name => "photo[token]"
      assert_select "input#photo_tags", :name => "photo[tags]"
      assert_select "input#photo_data", :name => "photo[data]"
    end
  end
end
