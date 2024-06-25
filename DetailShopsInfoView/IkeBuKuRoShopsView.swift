//
//  IkeBuKuRoShopsView.swift
//  Hangout
//
//  Created by cmStudent on 2024/06/22.
//

import SwiftUI

struct ShuYuJiView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("本格四川料理 蜀魚記").font(.title2)
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
                ShopInfoRow(label: "ジャンル", value: "四川料理、中華料理、居酒屋",imageName: "fork.knife")
                ShopInfoRow(label: "住所", value: "豊島区南池袋1-26-2\n近代グループBLD. 3号舘 7F",imageName: "house")
                ShopInfoRow(label: "電話", value: "050-5872-0489", imageName: "phone")
                ShopInfoRow(label: "営業時間", value: "11:00 - 05:00", imageName: "clock")
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

#Preview {
    ShuYuJiView()
}
