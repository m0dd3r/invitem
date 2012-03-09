class AddInvitationToInvitee < ActiveRecord::Migration
  def change
    add_column :invitees, :invitation_id, :integer
  end
end
