require 'spec_helper'

describe "CiExperiments" do
  describe "GET /ci_experiments" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get ci_experiments_path
      response.status.should be(200)
    end
  end
end
