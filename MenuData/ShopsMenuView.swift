//
//  ShopsMenu.swift
//  Hangout
//
//  Created by cmStudent on 2024/06/21.
//

import SwiftUI

struct testSheet: Identifiable {
    let id = UUID()
    let SheetView: AnyView
}

let SheetView = [
    testSheet(SheetView: AnyView(luhuojianghuMenu())),
    testSheet(SheetView:AnyView(moukotanmenMenu()))
]

//MenuData
let luhuojianghuMenuImages = [
    "luhuo1","luhuo2"
]

let moukotanmenMenuImages = [
    "mkshio","mkmiso","mk2","mkoriginal"
]

struct luhuojianghuMenu: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(luhuojianghuMenuImages, id:\.self) {
                        img in Image(img)
                            .resizable()
                            .frame(width:220,height:150)
                            .clipped()
                            .cornerRadius(20)
                    }
                }
            }.padding()
        }
    }
}

struct moukotanmenMenu: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(moukotanmenMenuImages,id:\.self) {
                        img in Image(img)
                            .resizable()
                            .frame(width:130,height:200)
                            .clipped()
                            .cornerRadius(20)
                    }
                }
            }.padding()
        }
    }
}

#Preview {
    NavigationView {
        moukotanmenMenu()
    }
}
