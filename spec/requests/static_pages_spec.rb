require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    it "should have the content 'Nerd App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Nerd App')
    end
  
  
    it "should have the title Home" do
      visit '/static_pages/home'
      page.should have_selector('title',
                      :text => "Home | Nerd App")
    end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have the title Help" do
      visit '/static_pages/help'
      page.should have_selector('title',
                      :text => "Help | Nerd App")
    end
  end
  
  describe "About page" do
      it "should have the content 'About'" do
        visit '/static_pages/about'
        page.should have_selector('h1', :text => 'About')
      end
      
      it "should have the title About" do
        visit '/static_pages/about'
        page.should have_selector('title',
                        :text => "About | Nerd App")
      end
      
    end
end
