class CreateCommunications < ActiveRecord::Migration
  def change
    create_table :communications do |t|
      t.string :answering_machine
      t.string :call_status
      t.string :outcome

      t.timestamps
    end
  end
end
