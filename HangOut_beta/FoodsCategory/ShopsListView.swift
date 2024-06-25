//
//  ShopsListView.swift
//  Hangout
//
//  Created by cmStudent on 2024/06/13.

import SwiftUI

struct areaShops: Identifiable {
    let id = UUID()
    let name: String
    let destination: AnyView
}

let chineseFoods = [
    areaShops(name: "千里香", destination: AnyView(NiKoRiMaKoRiView())),
    areaShops(name: "盛興順鉄鍋炖", destination: AnyView(MoKoTanMenView())),
    areaShops(name: "炉火江湖", destination: AnyView(TonKuView())),
    areaShops(name: "石庫門", destination: AnyView(IshiKuMonView())),
    areaShops(name: "譚鴨血老火鍋", destination: AnyView(TonKuView())),
    areaShops(name: "四季香", destination: AnyView(TonKuView())),
    areaShops(name: "楊国福マーラータン", destination: AnyView(TonKuView())),
    areaShops(name: "小魏鸭脖", destination: AnyView(TonKuView())),
]

let koreanFoods = [
    areaShops(name: "シンジョントポッキー", destination: AnyView(MoKoTanMenView())),
    areaShops(name: "サゴリヤンコプチャン", destination: AnyView(MoKoTanMenView())),
    areaShops(name: "明洞のり巻き", destination: AnyView(MoKoTanMenView())),
    areaShops(name: "石庫門", destination: AnyView(IshiKuMonView())),
    areaShops(name: "にっこりマッコリ", destination: AnyView(TonKuView())),
    areaShops(name: "韓美膳", destination: AnyView(TonKuView())),
    areaShops(name: "香港飯店", destination: AnyView(TonKuView())),
    areaShops(name: "中央シジャン", destination: AnyView(NiKoRiMaKoRiView())),
    areaShops(name: "テジョンデ", destination: AnyView(NiKoRiMaKoRiView())),
    areaShops(name: "人生酒場", destination: AnyView(NiKoRiMaKoRiView())),
    areaShops(name: "オンヘヤ韓国ポチャ", destination: AnyView(NiKoRiMaKoRiView()))
]

let japaneseFoods = [
    areaShops(name: "蒙古タンメン中本", destination: AnyView(NiKoRiMaKoRiView())),
    areaShops(name: "夢庵", destination: AnyView(MoKoTanMenView())),
    areaShops(name: "とん久", destination: AnyView(TonKuView())),
    areaShops(name: "鳥貴族", destination: AnyView(IshiKuMonView()))
]

let asiaFoods = [
    areaShops(name: "センホン", destination: AnyView(MoKoTanMenView())),
    areaShops(name: "バインミーゴンゴン", destination: AnyView(TonKuView())),
    areaShops(name: "Bintang Bali", destination: AnyView(NiKoRiMaKoRiView()))
]

struct ShopsListView: View {
    
    @State private var searchText = ""
    @State private var category = 0
    
    var body: some View {
        VStack(spacing: 0) {
            Picker(selection: $category, label: Text("")) {
                Text("中華料理").tag(0)
                Text("韓式料理").tag(1)
                Text("日本料理").tag(2)
                Text("アジア料理").tag(3)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            .padding(.bottom)
            List {
                if category == 0 {
                    ForEach(chineseFoods) { shop in
                        NavigationLink(destination: shop.destination) {
                            Text(shop.name)
                        }
                    }
                } else if category == 1 {
                    ForEach(koreanFoods) { shop in
                        NavigationLink(destination: shop.destination) {
                            Text(shop.name)
                        }
                    }
                } else if category == 2 {
                    ForEach(japaneseFoods) { shop in
                        NavigationLink(destination: shop.destination) {
                            Text(shop.name)
                        }
                    }
                } else {
                    ForEach(asiaFoods) { shop in
                        NavigationLink(destination: shop.destination) {
                            Text(shop.name)
                        }
                    }
                }
            }
            //            .searchable(text: $searchText, prompt: "料理の検索")
            //            .keyboardType(.default)
            //            .scrollDismissesKeyboard(.immediately)
        }
        .navigationTitle("料理")
    }
    //    var searchResults: [Shop] {
    //        if searchText.isEmpty {
    //            return shopsTakadanobaba
    //        } else {
    //            return shopsTakadanobaba.filter {
    //                $0.name.contains(searchText)
    //            }
    //        }
    //    }
}

#Preview {
    ShopsListView()
}
