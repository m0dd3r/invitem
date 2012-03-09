require 'spec_helper'

describe "invitations/index" do
  before(:each) do
    assign(:invitations, [
      stub_model(Invitation),
      stub_model(Invitation)
    ])
  end

  it "renders a list of invitations" do
    render
  end
end
