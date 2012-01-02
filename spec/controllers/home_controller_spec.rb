require 'spec_helper'

describe HomeController do

  describe "GET 'bootstrap'" do
    it "initializes client app" do
      get 'bootstrap'

      response.should be_success
      assigns(:songs).should eq Song.all
      response.should render_template(:bootstrap)
    end
  end

end
