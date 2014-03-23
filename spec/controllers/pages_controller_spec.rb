require 'spec_helper'

describe PagesController do

  describe "GET 'top_charts'" do
    it "returns http success" do
      get 'top_charts'
      response.should be_success
    end
  end

  describe "GET 'rate_an_athlete'" do
    it "returns http success" do
      get 'rate_an_athlete'
      response.should be_success
    end
  end

  describe "GET 'athlete_response'" do
    it "returns http success" do
      get 'athlete_response'
      response.should be_success
    end
  end

  describe "GET 'my_account'" do
    it "returns http success" do
      get 'my_account'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

end
