require 'spec_helper'

describe "ci_experiments/index" do
  before(:each) do
    assign(:ci_experiments, [
      stub_model(CiExperiment,
        :game => "Game",
        :alpha => 1.5,
        :delta => 1.5,
        :step_size => 1,
        :aggregate_level => 2,
        :wait_length => 3,
        :max_step => 4,
        :data => "Data"
      ),
      stub_model(CiExperiment,
        :game => "Game",
        :alpha => 1.5,
        :delta => 1.5,
        :step_size => 1,
        :aggregate_level => 2,
        :wait_length => 3,
        :max_step => 4,
        :data => "Data"
      )
    ])
  end

  it "renders a list of ci_experiments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Game".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
  end
end
