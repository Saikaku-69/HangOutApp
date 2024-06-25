//
//  ShinOkuboShopsView.swift
//  Hangout
//
//  Created by cmStudent on 2024/06/22.
//
import SwiftUI

struct ShinJeongToPoKiView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("シンジョントッポッキ 新大久保店").font(.title2)
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
                ShopInfoRow(label: "ジャンル", value: "韓国料理",imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "東京都新宿区百人町1-7-5 \n座ビル 2F",imageName: "house")
                ShopInfoRow(label: "電話", value: "03-6709-6940", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "11:00 - 21:00", imageName: "clock")
                ShopInfoRow(label: "予算", value: "￥1,000～￥1,999", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct SaGoRiKoPuChanView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("サゴリヤンコプチャン 新大久保店").font(.title2)
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
                ShopInfoRow(label: "ジャンル", value: "ホルモン、韓国料理、焼肉",imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "東京都新宿区百人町1-8-25\nBSビル 2F",imageName: "house")
                ShopInfoRow(label: "電話", value: "03-6265-9008", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "12:00 - 03:00", imageName: "clock")
                ShopInfoRow(label: "予算", value: "￥4,000～￥4,999", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct XiaoWeiYaBoView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("小魏鴨脖店").font(.title2)
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
                ShopInfoRow(label: "ジャンル", value: "中華料理",imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "東京都新宿区百人町1-17-9",imageName: "house")
                ShopInfoRow(label: "電話", value: "03-5937-3710", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "24時間営業", imageName: "clock")
                ShopInfoRow(label: "予算", value: "￥1,000～￥1,999", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct MingDongNoRiMaKiView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("明洞のり巻 新大久保店").font(.title2)
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
                ShopInfoRow(label: "ジャンル", value: "韓国料理、冷麺",imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "東京都新宿区百人町1-3-17",imageName: "house")
                ShopInfoRow(label: "電話", value: "03-3232-8896", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "24時間営業", imageName: "clock")
                ShopInfoRow(label: "予算", value: "￥1,000～￥1,999", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct HongKongBanZumView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("香港飯店0410 新大久保店").font(.title2)
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
                ShopInfoRow(label: "ジャンル", value: "中華料理",imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "新宿区百人町2-2-3\nTrn新大久保 B1F",imageName: "house")
                ShopInfoRow(label: "電話", value: "03-6380-2667", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "11:00 - 23:00", imageName: "clock")
                ShopInfoRow(label: "予算", value: "￥2,000～￥2,999", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct ZhongYangShiChangView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("中央市場").font(.title2)
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
                ShopInfoRow(label: "ジャンル", value: "韓国料理",imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "新宿区大久保1-13-6",imageName: "house")
                ShopInfoRow(label: "電話", value: "03-6205-6363", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "11:00 - 00:00", imageName: "clock")
                ShopInfoRow(label: "予算", value: "￥3,000～￥3,999", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct DeJeonDeView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("テジョンデ").font(.title2)
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
                ShopInfoRow(label: "ジャンル", value: "韓国料理、居酒屋、海鮮",imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "新宿区百人町1-6-15\nＮ・Ｋビル　２Ｆ",imageName: "house")
                ShopInfoRow(label: "電話", value: "050-5869-3632", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "11:00 - 22:45", imageName: "clock")
                ShopInfoRow(label: "予算", value: "￥5,000～￥5,999", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct RenShengJiuChangView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("人生酒場").font(.title2)
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
                ShopInfoRow(label: "ジャンル", value: "居酒屋",imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "新宿区百人町1-1-20\nグリーンプラザⅡ 1棟",imageName: "house")
                ShopInfoRow(label: "電話", value: "03-6302-1158", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "24時間営業", imageName: "clock")
                ShopInfoRow(label: "予算", value: "￥3,000～￥3,999", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct OnHeYaView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("オンヘヤ").font(.title2)
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
                ShopInfoRow(label: "ジャンル", value: "韓国料理",imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "東京都新宿区百人町1-23-21\n大久保寿ビル 2F",imageName: "house")
                ShopInfoRow(label: "電話", value: "03-6908-5677", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "-", imageName: "clock")
                ShopInfoRow(label: "予算", value: "￥2,000～￥2,999", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct SenHonView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("センホン・ベトナム料理専門店").font(.title2)
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
                ShopInfoRow(label: "ジャンル", value: "ベトナム料理",imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "新宿区百人町1-22-1\nNSKビル 2F",imageName: "house")
                ShopInfoRow(label: "電話", value: "070-2176-2176", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "11:00 - 23:00", imageName: "clock")
                ShopInfoRow(label: "予算", value: "￥2,000～￥2,999", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct GonGonView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("バインミーゴンゴン 大久保店").font(.title2)
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
                ShopInfoRow(label: "ジャンル", value: "バインミー、ベトナム料理",imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "新宿区百人町1-21-17\n村上ビル 1F",imageName: "house")
                ShopInfoRow(label: "電話", value: "03-5989-1246", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "10:00 - 22:00", imageName: "clock")
                ShopInfoRow(label: "予算", value: "￥1,000～￥1,999", imageName: "person")
                NavigationLink(destination:testView()) {
                    Text("口コミ")
                        .padding()
                }.padding(.vertical, 4)
            }
            Spacer()
        }.background(Color(.secondarySystemBackground))
    }
}

struct BintangBaliView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("ビンタン・バリ").font(.title2)
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
                ShopInfoRow(label: "ジャンル", value: "インドネシア料理",imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "新宿区百人町2-27-3\n橋本ビル3F",imageName: "house")
                ShopInfoRow(label: "電話", value: "03-6886-4439", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "11:00 - 20:00", imageName: "clock")
                ShopInfoRow(label: "予算", value: "￥1,000～￥1,999", imageName: "person")
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
        ShinokuboView()
    }
}

#Preview {
    NavigationView {
        ShinJeongToPoKiView()
    }
}
