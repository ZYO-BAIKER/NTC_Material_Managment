class CreateMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|
      t.string  :material_name,  null: false  # 資産名(必須)
      t.integer :material_count, null: false  # 資産名(必須)
      t.string  :maker                        # メーカー
      t.string  :place,          null: false  # 場所(必須)
      t.string  :other_places          # 現場時の場所
      t.string  :user                  # 使用者(必須)
      t.string  :other_users           # その他使用者
      t.string  :repair_request        # 修理依頼先
      t.date    :period_start          # 使用開始(必須)
      t.date    :period_end            # 使用終了
      t.date    :purchase_date         # 購入日
      t.integer :purchase_price        # 購入金額
      t.integer :purchase_place        # 購入場所
      t.date    :inspection_date       # 修理点検日
      t.string  :inspection_content    # 修理点検内容
      t.text    :memo                  # メモ(必須)
      t.timestamps
    end
  end
end
