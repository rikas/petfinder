class ChangeCatsFields < ActiveRecord::Migration[6.1]
  def change
    rename_column :cats, :variant, :breed
    rename_column :cats, :number_of_legs, :legs
  end
end
