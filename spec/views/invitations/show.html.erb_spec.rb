require 'spec_helper'

describe "invitations/show" do
  before(:each) do
    @invitation = assign(:invitation, stub_model(Invitation))
  end

  it "renders attributes in <p>" do
    render
  end
end
