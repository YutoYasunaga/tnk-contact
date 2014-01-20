  
  City.create([
    { name: "ホーチミン", branch_id: 1 },
    { name: "ハノイ", branch_id: 2 },
    { name: "フエ", branch_id: 3 },
    { name: "ダナン", branch_id: 3 },
    { name: "ホイアン", branch_id: 3 },
    { name: "ムイネー", branch_id: 1 },
    { name: "ニャチャン", branch_id: 1 },
    { name: "ハロン湾", branch_id: 2 },
    { name: "シェムリアップ", branch_id: 4 },
    { name: "プノンペン", branch_id: 4 },
    { name: "その他" },
    { name: "ベトナムに滞在しない" }])

  Branch.create([
    { name: "ホーチミン", email: "xinchao@tnkjapan.com" },
    { name: "ハノイ", email: "hanoi@tnkjapan.com" },
    { name: "ホイアン", email: "hoian@tnkjapan.com" },
    { name: "シェムリアップ", email: "siemreap@tnkjapan.com" }])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
