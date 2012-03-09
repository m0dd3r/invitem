require 'spec_helper'

describe "invitees/show" do
  before(:each) do
    @invitee = assign(:invitee, stub_model(Invitee,
      :first_name => "First Name",
      :last_name => "Last Name",
      :response => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Last Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
