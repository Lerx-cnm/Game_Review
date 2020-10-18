class CreateGamesTable < ActiveRecord::Migration[5.1]
    def change 
        create_table :games do |t|
            t.string :title
            t.string :genre
            t.integer :price
            t.string :platform
        end
    end
end