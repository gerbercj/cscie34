class CreateDeploys < ActiveRecord::Migration
  def change
    create_table :deploys do |t|
      t.belongs_to :project
      t.belongs_to :requestor
      t.integer :pull_request
      t.string :state
      t.string :sha
      t.string :branch

      t.timestamps
    end
  end
end
