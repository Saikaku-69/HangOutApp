//
//  ShopFront.swift
//  Hangout
//
//  Created by cmStudent on 2024/06/20.
//

import SwiftUI

struct luhuojianghuInfo: View {
    @Binding var button: Bool
    
    var body: some View {
        VStack (alignment: .center) {
            Text("詳細ページ") 
                .font(.title2)
                .multilineTextAlignment(.center)
            VStack (alignment: .leading) {
//                Spacer()
                Info(imageName: "phone", name: "　　電話", memo: "03-4363-9369")
                Info(imageName: "clock", name:"営業時間", memo:"11:00~23:00")
                Info(imageName: "person", name: "　　予算", memo:"¥3,000〜¥3,999")
                Info(imageName: "house", name: "　　住所", memo: "高田馬場1-34-14山崎ビル 3F")
                Spacer()
            }
        }
        .frame(width: 200)
        .background(Color(.secondarySystemBackground))
        .offset(x: button ? 0:200)
    }
}

struct mokotanmenInfo: View {
    @Binding var button: Bool
    
    var body: some View {
        VStack (alignment: .center) {
            Text("詳細ページ")
                .font(.title2)
                .multilineTextAlignment(.center)
            VStack (alignment: .leading) {
                Spacer()
                Info(imageName: "phone", name: "　　電話", memo: "03-3205-1223")
                Info(imageName: "clock", name:"営業時間", memo:"11:00~22:30")
                Info(imageName: "person", name: "　　予算", memo:"¥1~¥999")
                Info(imageName: "house", name: "　　住所", memo: "高田馬場1-26-5Ｆ・Ｉビル B1F")
                Spacer()
            }
        }
        .frame(width: 200)
        .background(Color(.secondarySystemBackground))
        .offset(x: button ? 0:200)
    }
}

#Preview {
    luhuojianghuInfo(button: .constant(true))
}
