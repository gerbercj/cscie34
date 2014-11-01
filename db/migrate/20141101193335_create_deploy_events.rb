class CreateDeployEvents < ActiveRecord::Migration
  def change
    create_table :deploy_events do |t|
      t.belongs_to :deploy
      t.string :message
      t.text :status

      t.timestamps
    end
  end
end
