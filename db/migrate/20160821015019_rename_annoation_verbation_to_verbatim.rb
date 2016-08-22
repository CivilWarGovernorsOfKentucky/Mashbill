class RenameAnnoationVerbationToVerbatim < ActiveRecord::Migration
  def change
  	rename_column(:annotations, :verbation, :verbatim)
  end
end
