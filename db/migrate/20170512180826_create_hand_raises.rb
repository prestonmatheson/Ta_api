class CreateHandRaises < ActiveRecord::Migration[5.0]
  def change
    create_table :hand_raises do |t|
      t.integer :hand_raise_id
      t.string :question
      t.text :body
      t.string :email
      t.string :name
      t.string :guide,            :default => 'General'
      t.string :guide_url
      t.integer :hand_raise_error
      t.integer :status,          :default => 0
      t.string :slack_username

      t.timestamps
    end
  end
end
