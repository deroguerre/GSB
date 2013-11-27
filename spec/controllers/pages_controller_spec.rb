require 'spec_helper'

describe PagesController do
	render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  it "Dois avoir le bon titre" do
    get 'home'
    response.should have_selector("title", :content => "Accueil")
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

  it "Dois avoir le bon titre" do
    get 'contact'
    response.should have_selector("title", :content => "Contact")
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

  it "Dois avoir le bon titre" do
    get 'about'
    response.should have_selector("title", :content => "A Propos")
  end

end
