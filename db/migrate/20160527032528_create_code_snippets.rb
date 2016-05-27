class CreateCodeSnippets < ActiveRecord::Migration
  def change
    create_table :code_snippets do |t|
      t.string :description
      t.text :code

      t.timestamps null: false
    end
  end
end
