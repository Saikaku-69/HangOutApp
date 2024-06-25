//
//  AreaView.swift
//  Hangout
//
//  Created by cmStudent on 2024/06/13.
//

import SwiftUI

struct TakadanobabaView: View {
    @State var isModal: Bool = false
    
    var body: some View {
        ScrollView {
            ForEach(shopsTakadanobaba) { shop in
                NavigationLink(destination: shop.destination) {
                    HStack{
                        Image(shop.icon ?? "")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding(5)
                        VStack(alignment: .leading) {
                            Text(shop.name)
                                .font(.footnote)
                                .foregroundColor(.black)
                            Text(shop.category)
                                .font(.footnote)
                                .foregroundColor(Color.secondary.opacity(0.8))
                        }
                        Spacer()
                        Button ("メニュー") {
                            isModal = true
                        }
                        .buttonStyle(.bordered)
                        .sheet(isPresented: $isModal) {
                            luhuojianghuMenu()
                                .presentationDetents([.fraction(0.4),.fraction(0.7)])
                                .presentationDragIndicator(.visible)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct ShinokuboView: View {
    @State var isModal: Bool = false
    
    var body: some View {
        ScrollView {
            ForEach(shopsShinokubo) { shop in
                NavigationLink(destination: shop.destination) {
                    HStack{
                        Image(shop.icon ?? "")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding(5)
                        VStack(alignment: .leading) {
                            Text(shop.name)
                                .font(.footnote)
                                .foregroundColor(.black)
                            Text(shop.category)
                                .font(.footnote)
                                .foregroundColor(Color.secondary.opacity(0.8))
                        }
                        Spacer()
                        Button ("メニュー") {
                            isModal = true
                        }
                        .buttonStyle(.bordered)
                        .sheet(isPresented: $isModal) {
                            luhuojianghuMenu()
                                .presentationDetents([.fraction(0.4),.fraction(0.7)])
                                .presentationDragIndicator(.visible)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct UenoView: View {
    @State var isModal: Bool = false
    
    var body: some View {
        ScrollView {
            ForEach(shopsUeno) { shop in
                NavigationLink(destination: shop.destination) {
                    HStack{
                        Image(shop.icon ?? "")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding(5)
                        VStack(alignment: .leading) {
                            Text(shop.name)
                                .font(.footnote)
                                .foregroundColor(.black)
                            Text(shop.category)
                                .font(.footnote)
                                .foregroundColor(Color.secondary.opacity(0.8))
                        }
                        Spacer()
                        Button ("メニュー") {
                            isModal = true
                        }
                        .buttonStyle(.bordered)
                        .sheet(isPresented: $isModal) {
                            luhuojianghuMenu()
                                .presentationDetents([.fraction(0.4),.fraction(0.7)])
                                .presentationDragIndicator(.visible)
                        }
                    }
                }
            }.padding()
        }
    }
}

struct IkeBuKuRoView: View {
    @State var isModal: Bool = false
    
    var body: some View {
        ScrollView {
            ForEach(shopsIkebukuro) { shop in
                NavigationLink(destination: shop.destination) {
                    HStack{
                        Image(shop.icon ?? "")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding(5)
                        VStack(alignment: .leading) {
                            Text(shop.name)
                                .font(.footnote)
                                .foregroundColor(.black)
                            Text(shop.category)
                                .font(.footnote)
                                .foregroundColor(Color.secondary.opacity(0.8))
                        }
                        
                        Spacer()
                        
                        Button ("メニュー") {
                            isModal = true
                        }
                        .buttonStyle(.bordered)
                        .sheet(isPresented: $isModal) {
                            luhuojianghuMenu()
                                .presentationDetents([.fraction(0.4),.fraction(0.7)])
                                .presentationDragIndicator(.visible)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct KaWaKuChiView: View {
    @State private var button = false
    @State var isModal: Bool = false
    
    var body: some View {
        ScrollView {
            ForEach(shopsKawakuchi) { shop in
                NavigationLink(destination: shop.destination) {
                    HStack{
                        Image(shop.icon ?? "")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding(5)
                        VStack(alignment: .leading) {
                            Text(shop.name)
                                .font(.footnote)
                                .foregroundColor(.black)
                            Text(shop.category)
                                .font(.footnote)
                                .foregroundColor(Color.secondary.opacity(0.8))
                        }
                        Spacer()
                        Button ("メニュー") {
                            isModal = true
                        }
                        .buttonStyle(.bordered)
                        .sheet(isPresented: $isModal) {
                            luhuojianghuMenu()
                                .presentationDetents([.fraction(0.4),.fraction(0.7)])
                                .presentationDragIndicator(.visible)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    NavigationView {
        TakadanobabaView()
    }
}
