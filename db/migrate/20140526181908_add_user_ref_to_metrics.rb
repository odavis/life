class AddUserRefToMetrics < ActiveRecord::Migration
  def change
    add_reference :metrics, :user, index: true
  end
end
