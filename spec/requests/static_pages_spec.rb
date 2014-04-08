require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    before do
      visit '/static_pages/home'
    end

    it "should have the content 'Cupidly' " do
    	expect(page).to have_content('Cupidly')
    end

    it "should have button to Sign up" do
      #(page).to have_link('Sign Up')
    end
  end

  describe "FAQ page" do
    before do
      visit '/static_pages/faq'
    end

    it "should have title and content 'FAQ'" do
      expect(page).to have_title('FAQ')
      expect(page).to have_content('Frequently asked questions')
    end
  end

  describe "About page" do
    before do 
      visit '/static_pages/about'
    end

    it "should have title and content 'About'" do
      expect(page).to have_title('About us')
      expect(page).to have_content('About')
    end
  end

  describe "Contact page" do
    before do
      visit '/static_pages/contact'
    end

    it "should have title and content 'Contact'" do
      expect(page).to have_title('Contact')
      expect(page).to have_content('Contact')
    end
  end
end
