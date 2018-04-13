class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.string :statename, :default => 'UNKNOWN'
      t.string :stateabbrev, :default => 'UNKNOWN'

      t.timestamps
    end
  end
end
