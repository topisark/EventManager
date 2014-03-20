require 'spec_helper'

describe "participations/edit" do
  before(:each) do
    @participation = assign(:participation, stub_model(Participation,
      :user_id => 1,
      :event_id => 1,
      :unregistered => false,
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit participation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", participation_path(@participation), "post" do
      assert_select "input#participation_user_id[name=?]", "participation[user_id]"
      assert_select "input#participation_event_id[name=?]", "participation[event_id]"
      assert_select "input#participation_unregistered[name=?]", "participation[unregistered]"
      assert_select "input#participation_name[name=?]", "participation[name]"
      assert_select "input#participation_email[name=?]", "participation[email]"
    end
  end
end
