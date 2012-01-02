require 'spec_helper'

describe SongsController do
  describe 'JSON api' do
    it 'returns songs index' do
      Song.stub(:all).and_return(stub(:to_json => 'songs json'))

      get :index, format: :json

      response.should be_success
      response.body.should == 'songs json'
    end
  end
end
