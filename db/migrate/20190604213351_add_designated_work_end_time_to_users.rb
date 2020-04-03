class AddDesignatedWorkEndTimeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :designated_work_end_time, :datetime, default: Time.zone.parse("2019/02/20 17:00")
  end
end