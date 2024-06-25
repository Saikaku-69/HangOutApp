//
//  UenoShopsView.swift
//  Hangout
//
//  Created by cmStudent on 2024/06/22.
//

import SwiftUI

struct SenRiKouView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("千里香").font(.title2)
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
                ShopInfoRow(label: "ジャンル", value: "中華料理、韓国料理、四川料理",imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "台東区上野4-2-6\n上野西田ビル B1F",imageName: "house")
                ShopInfoRow(label: "電話", value: "03-5807-1761", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "-", imageName: "clock")
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

struct TieGuoDunView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("盛興順 テツナベトン 上野店").font(.title2)
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
                ShopInfoRow(label: "住所", value: "台東区上野4-4-5\nc-roadビル 7F",imageName: "house")
                ShopInfoRow(label: "電話", value: "03-5817-4890", imageName: "phone")
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

#Preview {
    SenRiKouView()
}
