class AddColumnToSubscriptionTable < ActiveRecord::Migration
  def change
     add_column :subscribers, :expires, :date
  end
end
