require 'spec_helper'
describe "BasePages" do

#it "should have right information on All pages:" do
#      page.should have_content('Головна Душі  Поміщики  Посади  Контакти  Про сайт')
#end

describe "ContactPage" do
    before {visit '/contact'}
    it "should have right information on Contact page:" do
      page.should have_content('Find')
      page.should have_title('Dead Souls|Contact')
    end
    it "should have some selectors:" do
      page.should have_selector('p')
    end
  end
  
describe "LairdsPages" do
    before {visit lairds_path}
    it "should have right information on Lairds page:" do
      page.should have_content('Поміщики')
      page.should have_title('Dead Souls|Laird')
    end
    
    xit "should have some selectors:" do
      id=Laird.
      visit 'lairds/1'
      page.should have_selector('h1')
    end
  end

  describe "SoulsPages" do
    before {visit souls_path}
    it "should have right information Souls on page:" do
      page.should have_content('Мертві душі')
      page.should have_title('Dead Souls|Souls')
    end
    xit "should have some selectors:" do
      page.should have_selector('h1')
    end
  end    

describe "WorkAsPages" do
  before {visit work_as_path}
    it "should have right information on WorkAs page:" do
      page.should have_content('Вакансії')
      page.should have_title('Dead Souls|Work As')
    end
    xit "should have some selectors:" do
      page.should have_selector('h1')
    end
  end
    
end
