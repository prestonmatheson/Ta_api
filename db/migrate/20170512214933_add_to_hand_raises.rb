class AddToHandRaises < ActiveRecord::Migration[5.0]
  def change
  	add_column :hand_raises, :ta_id, :integer
  	add_column :hand_raises, :ta_email, :string
  end
end
