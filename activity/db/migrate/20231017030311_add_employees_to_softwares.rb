class AddEmployeesToSoftwares < ActiveRecord::Migration[7.0]
  def change
    add_column :softwares, :employee_id, :string
  end
end
