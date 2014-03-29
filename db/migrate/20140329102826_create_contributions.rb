class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|

      t.integer :user_id
      t.datetime :contribution_date
      t.integer :amount

      t.timestamps
    end
  end
end
