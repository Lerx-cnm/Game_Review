class CreateReviewsTable < ActiveRecord::Migration[5.1]
    def change
        create_table :reviews do |t|
            t.string :title 
            t.string :body
            t.integer :user_id
            t.integer :game_id
        end
    end
end