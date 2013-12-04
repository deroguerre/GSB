require 'spec_helper'

describe PagesController do
	render_views

  before(:each) do
    @ok = "Http répond avec succès"
    @failtitle = "Dois avoir le bon titre"
  end

  describe "GET 'home'" do
    it @ok do
      get 'home'
      response.should be_success
    end
  end

  it @failtitle do
    get 'home'
    response.should have_selector("title", :content => "Accueil")
  end

  describe "GET 'contact'" do
    it @ok do
      get 'contact'
      response.should be_success
    end
  end

  it @failtitle do
    get 'contact'
    response.should have_selector("title", :content => "Contact")
  end

  describe "GET 'about'" do
    it @ok do
      get 'about'
      response.should be_success
    end
  end

  it @failtitle do
    get 'about'
    response.should have_selector("title", :content => "A Propos")
  end

  describe "GET 'help'" do
    it @ok do
      get 'help'
      response.should be_success
    end
  end

  it @failtitle do
    get 'help'
    response.should have_selector("title", :content => "Aide")
  end
end
