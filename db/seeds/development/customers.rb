city_names = %W(青巻市 赤巻市 黄巻市)

family_names = %w{
  佐藤:サトウ:sato
  鈴木:スズキ:suzuki
  高橋:タカハシ:takahashi
  田中:タナカ:tanaka
  渡辺:ワタナベ:watanabe
  伊藤:イトウ:ito
  山本:ヤマモト:yamamoto
  中村:ナカムラ:nakamura
  小林:コバヤシ:kobayashi
  加藤:カトウ:kato
}

given_names = %w{
  一郎:イチロウ:ichiro
  二郎:ジロウ:jiro
  三郎:サブロウ:saburo
  四郎:シロウ:shiro
  五朗:ゴロウ:goro
  松子:マツコ:matsuko
  竹子:タケコ:takeko
  梅子:ウメコ:umeko
  鶴子:ツルコ:turuko
  亀子:カメコ:kameko
}

company_names = %w(fujiko ABC XYZ)

10.times do |n|
  10.times do |n|
    fn = family_names[n].split(":")
    gn = given_names[n].split(":")

    c = Customer.create!(
      email: "#{fn[2]}.#{gn[2]}@example.jp",
      family_name: fn[0],
      given_name: gn[0],
      family_name_kana: fn[1],
      given_name_kana: gn[1],
      password: "password",
      birthday: 60.years.ago.advance(seconds: rand(40.years)).to_date,
      gender: m < 5 ? "male" : "female"
    )