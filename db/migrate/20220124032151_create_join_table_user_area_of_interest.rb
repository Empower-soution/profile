class CreateJoinTableUserAreaOfInterest < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :area_of_interests do |t|
      # t.index [:user_id, :area_of_interest_id]
      # t.index [:area_of_interest_id, :user_id]
    end
  end
end
