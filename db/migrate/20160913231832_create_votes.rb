class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.column :votable_id, :integer
      t.column :user_id, :integer
      t.column :answer_id, :integer
      t.timestamps
    end
  end
end
