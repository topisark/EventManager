require 'spec_helper'

describe "event_types/show" do
  before(:each) do
    @event_type = assign(:event_type, stub_model(EventType,
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
