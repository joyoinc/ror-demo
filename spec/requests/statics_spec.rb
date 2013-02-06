require 'spec_helper'

describe "Statics" do

  let(:base_title) { "Demo Page" }

  describe "Home Page" do
    it "should have title 'Home' " do
      visit root_path
      page.should have_content('Sample App')
      page.should have_selector('title', :text => "#{base_title} | Home")
    end
  end

  describe "Help Page" do
    it "should have title 'Help' " do
      visit help_path
      page.should have_content('help')
      page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end

  describe "Contact Page" do
    it "should have title 'Contact' " do
      visit contact_path
      page.should have_content('contact')
      page.should have_selector('title', :text => "#{base_title} | Contact")
    end
  end
end
