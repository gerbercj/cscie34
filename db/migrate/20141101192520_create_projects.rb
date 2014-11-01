class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :account
      t.string :repository
      t.text :hosts

      t.timestamps
    end
  end
end
