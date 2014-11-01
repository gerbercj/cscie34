class CreateDeployQueries < ActiveRecord::Migration
  def change
    create_table :deploy_queries do |t|
      t.belongs_to :deploy
      t.text :query
      t.string :expected_result
      t.string :actual_result

      t.timestamps
    end
  end
end
