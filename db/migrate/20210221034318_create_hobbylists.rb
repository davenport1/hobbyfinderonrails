class CreateHobbylists < ActiveRecord::Migration[6.1]
  def change
    create_table :hobbylists do |t|
      t.string :hobbyname
      t.string :description
      t.numeric :averagecost
      t.string :resources

      t.timestamps
    end
  end
end
