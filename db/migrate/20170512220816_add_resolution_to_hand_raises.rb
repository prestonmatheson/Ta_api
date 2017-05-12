class AddResolutionToHandRaises < ActiveRecord::Migration[5.0]
  def change
    add_column :hand_raises, :resolution, :text
  end
end
