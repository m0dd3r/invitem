class CreateInvitees < ActiveRecord::Migration
  def change
    create_table :invitees do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :response

      t.timestamps
    end
  end
end
