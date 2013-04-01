class AddSubscriptionsTable < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :plan
      t.integer :duration
      t.decimal :cost
      t.integer :no_of_photos
      t.integer :no_of_texts
      t.integer :no_of_emails
      t.boolean :a_list
      t.timestamps
    end
  end
end
