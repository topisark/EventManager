require 'spec_helper'

describe "participations/show" do
  before(:each) do
    @participation = assign(:participation, stub_model(Participation,
      :user_id => 1,
      :event_id => 2,
      :unregistered => false,
      :name => "Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/false/)
    rendered.should match(/Name/)
    rendered.should match(/Email/)
  end
end
