require 'spec_helper'

describe "StaticPages" do
  
describe "title" do
  	it "should have right title" do
  		visit '/pages/home'
  		page.should have_selector ('title')
  	end
  end

  describe "GET /static_pages" do
    it "should have the content 'Find'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/pages/home'
      page.should have_content ('Find')
    end
  end

end
