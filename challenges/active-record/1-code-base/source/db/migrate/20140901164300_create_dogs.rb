class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string   :license
      t.string   :name
      t.integer  :age
      t.integer  :weight
      t.integer  :owner_id # LLave foranea

      t.timestamps
    end
  end
end
