require 'spec_helper'

describe "ci_experiments/edit" do
  before(:each) do
    @ci_experiment = assign(:ci_experiment, stub_model(CiExperiment,
      :game => "MyString",
      :alpha => 1.5,
      :delta => 1.5,
      :step_size => 1,
      :aggregate_level => 1,
      :wait_length => 1,
      :max_step => 1,
      :data => "MyString"
    ))
  end

  it "renders the edit ci_experiment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ci_experiment_path(@ci_experiment), "post" do
      assert_select "input#ci_experiment_game[name=?]", "ci_experiment[game]"
      assert_select "input#ci_experiment_alpha[name=?]", "ci_experiment[alpha]"
      assert_select "input#ci_experiment_delta[name=?]", "ci_experiment[delta]"
      assert_select "input#ci_experiment_step_size[name=?]", "ci_experiment[step_size]"
      assert_select "input#ci_experiment_aggregate_level[name=?]", "ci_experiment[aggregate_level]"
      assert_select "input#ci_experiment_wait_length[name=?]", "ci_experiment[wait_length]"
      assert_select "input#ci_experiment_max_step[name=?]", "ci_experiment[max_step]"
      assert_select "input#ci_experiment_data[name=?]", "ci_experiment[data]"
    end
  end
end
