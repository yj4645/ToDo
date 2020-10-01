class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      
      # t.references   :user,    foreign_key:true
      t.string       :text,     null:false
      t.string       :title,    null:false
      t.string       :date_time, null:false
      t.timestamps
    end
  end
end
