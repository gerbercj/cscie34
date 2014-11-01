class CreateDeployCommands < ActiveRecord::Migration
  def change
    create_table :deploy_commands do |t|
      t.belongs_to :deploy
      t.text :command
      t.text :parameters
      t.text :result

      t.timestamps
    end
  end
end
