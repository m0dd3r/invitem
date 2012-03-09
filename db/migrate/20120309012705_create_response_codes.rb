class CreateResponseCodes < ActiveRecord::Migration
  def change
    create_table :response_codes do |t|
      t.integer :code
      t.references :invitation

      t.timestamps
    end
    add_index :response_codes, :invitation_id
  end
end
