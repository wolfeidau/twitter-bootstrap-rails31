require 'spec_helper'

describe WelcomeController do
  render_views

  before(:each) do
    @base_title = "Project Wizard - "
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end

    it "should have the correct title" do
      get 'index'
      response.body.should have_selector('head title',
                                         :text => @base_title + "Home")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "should have the correct title" do
      get 'about'
      response.body.should have_selector('head title',
                                :text => @base_title + "About")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the correct title" do
      get 'contact'
      response.body.should have_selector('head title',
                                :text => @base_title + "Contact")
    end
  end
end
