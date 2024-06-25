//
//  AreaList.swift
//  Hangout
//
//  Created by cmStudent on 2024/06/21.
//

import SwiftUI

//AreaListView Page
struct Area: Identifiable {
    let id = UUID()
    let name: String
    let navi: [String]
    let destination: AnyView
    let imageName: String
}
struct Navi: Identifiable {
    let id = UUID()
    let navi: [String]
}
let menu = ["エリア", "料理"]

let areas = [
    Area(name: "高田馬場", navi: ["JY","SS","T"], destination: AnyView(TakadanobabaView()), imageName: "bigbox"),
    Area(name: "新大久保", navi: ["JY","JB"], destination: AnyView(ShinokuboView()), imageName: "kpop"),
    Area(name: "上野", navi: ["JY","JK","JJ","JS","H","G"], destination: AnyView(UenoView()), imageName: "panda"),
    Area(name: "池袋", navi: ["JY","JK","JA","JS","M","Y","F"], destination: AnyView(IkeBuKuRoView()), imageName: "build"),
    Area(name: "川口", navi: ["JK"], destination: AnyView(KaWaKuChiView()), imageName: "kawakuchi")
]

//AreaView Page
struct Shop: Identifiable {
    let id = UUID()
    let name: String
    let destination: AnyView
    let category: String
    let icon: String?
    let menuView: AnyView?
    let menuImage: [String]?
    
    init(name: String, destination: AnyView, category: String, icon: String? = nil, menuView: AnyView? = nil, menuImage: [String]? = nil) {
        self.name = name
        self.destination = destination
        self.category = category
        self.icon = icon
        self.menuView = menuView
        self.menuImage = menuImage
    }
}

let shopsTakadanobaba = [
    Shop(name: "炉火江湖", destination: AnyView(LuHuoJiangHuView()), category: "中華料理", icon: "luhuojianghu",menuView: AnyView(luhuojianghuMenu())),
    Shop(name: "蒙古タンメン中本", destination: AnyView(MoKoTanMenView()), category: "ラーメン",icon: "moukou",menuView: AnyView(moukotanmenMenu())),
    Shop(name: "石庫門", destination: AnyView(IshiKuMonView()), category: "中華料理",icon: "shikumen",menuView: AnyView(moukotanmenMenu())),
    Shop(name: "とん久", destination: AnyView(TonKuView()), category: "とんかつ",icon: "tonku",menuView: AnyView(moukotanmenMenu())),
    Shop(name: "楊国福マーラータン", destination: AnyView(YangGuoFuView()), category: "中華料理",icon: "yangguofu",menuView: AnyView(moukotanmenMenu())),
    Shop(name: "にっこりマッコリ", destination: AnyView(NiKoRiMaKoRiView()), category: "韓国料理",icon: "nikorimakori",menuView: AnyView(moukotanmenMenu())),
    Shop(name: "鳥貴族　高田馬場店", destination: AnyView(ToRiKiZoKuAView()), category: "焼き鳥",icon: "toriki",menuView: AnyView(moukotanmenMenu())),
    Shop(name: "鳥貴族　高田馬場さかえ通り店", destination: AnyView(ToRiKiZoKuBView()), category: "焼き鳥",icon: "toriki",menuView: AnyView(moukotanmenMenu()))
]

let shopsShinokubo = [
    Shop(name: "シンジョントポッキー", destination: AnyView(ShinJeongToPoKiView()), category: "韓国料理",icon: "shinzen"),
    Shop(name: "サゴリヤンコプチャン", destination: AnyView(SaGoRiKoPuChanView()), category: "韓国料理",icon: "sagori"),
    Shop(name: "小魏鸭脖", destination: AnyView(XiaoWeiYaBoView()), category: "中華料理",icon: "xiaowei"),
    Shop(name: "明洞のり巻き", destination: AnyView(MingDongNoRiMaKiView()), category: "韓国料理",icon: "mingdong"),
    Shop(name: "香港飯店", destination: AnyView(HongKongBanZumView()), category: "中華料理",icon: "hongkong"),
    Shop(name: "中央シジャン", destination: AnyView(ZhongYangShiChangView()), category: "韓国料理",icon: "zhongyang"),
    Shop(name: "テジョンデ", destination: AnyView(DeJeonDeView()), category: "韓国料理",icon: "tejondelogo"),
    Shop(name: "人生酒場", destination: AnyView(RenShengJiuChangView()), category: "韓国料理",icon: "rensheng"),
    Shop(name: "オンヘヤ韓国ポチャ", destination: AnyView(OnHeYaView()), category: "韓国料理",icon: "onheyalogo"),
    Shop(name: "センホン", destination: AnyView(SenHonView()), category: "中華料理",icon: "senhonlogo"),
    Shop(name: "バインミーゴンゴン", destination: AnyView(GonGonView()), category: "ベトナム料理",icon: "gongonlogo"),
    Shop(name: "Bintang Bali", destination: AnyView(BintangBaliView()), category: "インドネシア料理",icon: "balilogo")
]

let shopsUeno = [
    Shop(name: "千里香", destination: AnyView(SenRiKouView()), category: "中華料理", icon: "qianlixiang", menuImage: ["luhuo","luhuo1"]),
    Shop(name: "盛興順鉄鍋炖", destination: AnyView(TieGuoDunView()), category: "中華料理", icon: "tieguodun", menuImage: ["mkshio","mkmiso","mk2","mkoriginal"])
]

let shopsIkebukuro = [
    Shop(name: "蜀魚記", destination: AnyView(ShuYuJiView()), category: "中華料理", icon: "shuyuji")
]

let shopsKawakuchi = [
    Shop(name: "千里香", destination: AnyView(TonKuView()), category: "中華料理"),
    Shop(name: "盛興順鉄鍋炖", destination: AnyView(MoKoTanMenView()), category: "中華料理")
]

//ShopsView
struct ShopInfoRow: View {
    var label: String
    var value: String
    var imageName: String? = nil
    
    var body: some View {
        HStack {
            if let imageName = imageName {
                Image(systemName: imageName)
                    .frame(width: 10)
                    .padding()
            }
            Text(label)
                .font(.headline)
                .frame(width: 70,alignment: .leading)
            Spacer()
            Text(value)
                .font(.subheadline)
                .multilineTextAlignment(.trailing)
                .padding(.trailing)
        }
        .padding()
    }
}

// InfoData
struct Info: View {
    var imageName: String? = nil
    var name: String
    var memo: String? = nil
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if let icon = imageName {
                    Image(systemName: icon)
                    
                }
                Text(name).font(.headline)
                    .padding(.vertical)
            }
            if let message = memo {
                Text(message)
                    .font(.footnote)
                    .foregroundColor(.secondary.opacity(0.8))
            }
        }
    }
}
