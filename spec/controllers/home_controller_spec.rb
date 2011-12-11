require 'spec_helper'

describe HomeController do

  describe "GET 'bootstrap'" do
    it "returns http success" do
      get 'bootstrap'
      response.should be_success
    end
  end

end
