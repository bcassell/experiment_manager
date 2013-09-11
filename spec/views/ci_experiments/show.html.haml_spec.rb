require 'spec_helper'

describe "ci_experiments/show" do
  before(:each) do
    @ci_experiment = assign(:ci_experiment, stub_model(CiExperiment,
      :game => "Game",
      :alpha => 1.5,
      :delta => 1.5,
      :step_size => 1,
      :aggregate_level => 2,
      :wait_length => 3,
      :max_step => 4,
      :data => "Data"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Game/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/Data/)
  end
end
