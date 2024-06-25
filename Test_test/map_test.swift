////
////  map.swift
////  Hangout
////
////  Created by cmStudent on 2024/06/21.
////
//
//
//import SwiftUI
//import MapKit
//struct map: View {
//
//    @State var position:MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: <#T##CLLocationDegrees#>, longitude: <#T##CLLocationDegrees#>), span: MKCoordinateSpan)
//    var body: some View {
//        Map()
//    }
//}
//
//#Preview {
//    map()
//}
//struct TakadanobabaView: View {
//    @State private var button = false
//    @State var isModal: Bool = false
//
//    var body: some View {
//        HStack {
//            if button {
//                luhuojianghuInfo(button:$button)
//                    .transition(.move(edge: .leading))
//            }
//            ScrollView {
//                ForEach(shopsTakadanobaba) { shop in
//                    NavigationLink(destination: shop.destination) {
//                        HStack{
//                            Image(shop.icon ?? "")
//                                .resizable()
//                                .frame(width: 60, height: 60)
//                                .clipShape(Circle())
//                                .padding(5)
//                                .onTapGesture {
//                                    withAnimation {
//                                        self.button.toggle()
//                                    }
//                                }
//                            VStack(alignment: .leading) {
//                                Text(shop.name)
//                                    .font(.footnote)
//                                    .foregroundColor(.black)
//                                Text(shop.category)
//                                    .font(.footnote)
//                                    .foregroundColor(Color.secondary.opacity(0.8))
//                            }
//                            Spacer()
//                            Button ("メニュー") {
//                                isModal = true
//                            }
//                            .frame(width:100)
//                            .buttonStyle(.bordered)
//                            .sheet(isPresented: $isModal) {
//                                luhuojianghuMenu()
//                                    .presentationDetents([.fraction(0.4),.fraction(0.7)])
//                                    .presentationDragIndicator(.visible)
//                            }
//                        }
//                    }.frame(height:60)
//                        .padding()
//                }
//            }
//        }.frame(width: UIScreen.main.bounds.width)
//    }
//}
