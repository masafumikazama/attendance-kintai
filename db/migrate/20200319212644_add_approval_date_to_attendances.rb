class AddApprovalDateToAttendances < ActiveRecord::Migration[5.1]
  def change
    add_column :attendances, :approval_date, :date
  end
end
