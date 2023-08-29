class AddCarKmsAndCycleKmsAndPublicTransportsKmsToEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :entries, :Car_Kms, :float
    add_column :entries, :Cycle_Kms, :float
    add_column :entries, :Public_Transports_Kms, :float
  end
end
