//
//  ShopsView.swift
//  Hangout
//
//  Created by cmStudent on 2024/06/13.
//

import SwiftUI

struct LuHuoJiangHuView: View {
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                Text("炉火江湖").font(.title2)
                    .padding()
                    .background(
                        RadialGradient(
                            gradient: Gradient(colors: [.red, .yellow]),
                            center: .center,
                            startRadius: 0,
                            endRadius: 200
                        )
                    )
                    .cornerRadius(10)
                ShopInfoRow(label: "種類", value: "中華料理、肉料理", imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "〒169-0075\n高田馬場1-34-14\n山崎ビル 3F", imageName: "house")
                ShopInfoRow(label: "電話", value: "03-4363-9369", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "11:00〜15:00\n17:00〜23:00", imageName: "clock")
                ShopInfoRow(label: "予算", value: "¥3,000〜¥3,999", imageName: "person")
                HStack {
                    NavigationLink(destination:testView()) {
                        Text("口コミ")
                            .padding()
                    }.padding(.vertical, 4)
                }
                Spacer()
            }
        }.background(Color(.secondarySystemBackground))
    }
}

struct MoKoTanMenView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("蒙古タンメン中本").font(.title2)
                .padding()
                .background(
                    RadialGradient(
                        gradient: Gradient(colors: [.red, .yellow]),
                        center: .center,
                        startRadius: 0,
                        endRadius: 200
                    )
                )
                .cornerRadius(10)
            VStack {
                ShopInfoRow(label: "種類", value: "ラーメン、つけ麺", imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "高田馬場1-26-5\nＦ・Ｉビル B1F", imageName: "house")
                ShopInfoRow(label: "電話", value: "03-3205-1223", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "11:00〜22:30", imageName: "clock")
                ShopInfoRow(label: "予算", value: "〜¥999", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct IshiKuMonView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("石庫門").font(.title2)
                .padding()
                .background(
                    RadialGradient(
                        gradient: Gradient(colors: [.red, .yellow]),
                        center: .center,
                        startRadius: 0,
                        endRadius: 200
                    )
                )
                .cornerRadius(10)
            VStack {
                ShopInfoRow(label: "種類", value: "中華料理・小籠包、飲茶・点心", imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "高田馬場2-18-11\n稲門ビルＢ１Ｆ", imageName: "house")
                ShopInfoRow(label: "電話", value: "050-5570-4681", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "11:30〜22:00", imageName: "clock")
                ShopInfoRow(label: "予算", value: "¥1,000〜¥1,999", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct TonKuView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("とん久").font(.title2)
                .padding()
                .background(
                    RadialGradient(
                        gradient: Gradient(colors: [.red, .yellow]),
                        center: .center,
                        startRadius: 0,
                        endRadius: 200
                    )
                )
                .cornerRadius(10)
            VStack {
                ShopInfoRow(label: "ジャンル", value: "とんかつ")
                ShopInfoRow(label: "住所", value: "高田馬場1-26-5\nＦ・Ｉビル B1F")
                ShopInfoRow(label: "電話", value: "03-3209-3900", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "11:00〜22:30", imageName: "clock")
                ShopInfoRow(label: "予算", value: "¥1,000〜¥2,999", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct YangGuoFuView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("楊國福 マーラータン").font(.title2)
                .padding()
                .background(
                    RadialGradient(
                        gradient: Gradient(colors: [.red, .yellow]),
                        center: .center,
                        startRadius: 0,
                        endRadius: 200
                    )
                )
                .cornerRadius(10)
            VStack {
                ShopInfoRow(label: "ジャンル", value: "中華料理")
                ShopInfoRow(label: "住所", value: "高田馬場2-14-8\nNTビル 1F")
                ShopInfoRow(label: "電話", value: "03-4362-8308", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "11:00〜21:30", imageName: "clock")
                ShopInfoRow(label: "予算", value: "¥1,000〜¥1,999", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct NiKoRiMaKoRiView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("にっこりマッコリ").font(.title2)
                .padding()
                .background(
                    RadialGradient(
                        gradient: Gradient(colors: [.red, .yellow]),
                        center: .center,
                        startRadius: 0,
                        endRadius: 200
                    )
                )
                .cornerRadius(10)
            VStack {
                ShopInfoRow(label: "ジャンル", value: "韓国料理、居酒屋、焼肉")
                ShopInfoRow(label: "住所", value: "高田馬場2-18-11\n稲門ビル3F")
                ShopInfoRow(label: "電話", value: "03-5155-5446", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "11:00〜16:00\n17:00〜23:00", imageName: "clock")
                ShopInfoRow(label: "予算", value: "¥3,000〜¥4,999", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct ToRiKiZoKuAView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("鳥貴族 高田馬場店").font(.title2)
                .padding()
                .background(
                    RadialGradient(
                        gradient: Gradient(colors: [.red, .yellow]),
                        center: .center,
                        startRadius: 0,
                        endRadius: 200
                    )
                )
                .cornerRadius(10)
            VStack {
                ShopInfoRow(label: "ジャンル", value: "焼き鳥店")
                ShopInfoRow(label: "住所", value: "高田馬場１丁目２７−２\nイチカワビル ２階")
                ShopInfoRow(label: "電話", value: "03-6457-6520", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "17:00〜5:00\n16:00〜5:00", imageName: "clock")
                ShopInfoRow(label: "予算", value: "¥2,000〜¥3,000", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct ToRiKiZoKuBView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("鳥貴族 高田馬場さかえ通り店").font(.title2)
                .padding()
                .background(
                    RadialGradient(
                        gradient: Gradient(colors: [.red, .yellow]),
                        center: .center,
                        startRadius: 0,
                        endRadius: 200
                    )
                )
                .cornerRadius(10)
            VStack {
                ShopInfoRow(label: "ジャンル", value: "焼き鳥店")
                ShopInfoRow(label: "住所", value: "高田馬場３丁目１−６\n宝来ビル ２階")
                ShopInfoRow(label: "電話", value: "03-5937-4778", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "16:00〜5:00", imageName: "clock")
                ShopInfoRow(label: "予算", value: "¥2,000〜¥3,000", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

#Preview {
    NavigationView {
        LuHuoJiangHuView()
    }
}
