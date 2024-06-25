//
//  AreaList.swift
//  Hangout
//
//  Created by cmStudent on 2024/06/13.
//

import SwiftUI

struct AreaListView: View {
    @State private var searchText = ""
    @State var botan = 0
    
    var body: some View {
        NavigationView {
            VStack {
                if botan == 0 {
                    List {
                        ForEach(searchResults) { area in
                            NavigationLink(destination: area.destination) {
                                HStack {
                                    Image(area.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 50, height: 50)
                                        .cornerRadius(8)
                                    VStack(alignment: .leading) {
                                        Text(area.name)
                                            .font(.headline)
                                        HStack {
                                            ForEach(area.navi, id: \.self) { navi in
                                                Image(navi)
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                            }
                                        }
                                    }
                                    Spacer()
                                }
                                .padding(.vertical, 8)
                            }
                        }
                    }
                    .searchable(text: $searchText, prompt: "エリアの検索")
                    .navigationTitle(Text(menu[botan]))
                    .scrollDismissesKeyboard(.immediately)
                } else {
                    ShopsListView()
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Picker(selection: $botan, label: Text("")) {
                        Text("エリア").tag(0)
                        Text("料理").tag(1)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
        }
    }
    
    var searchResults: [Area] {
        if searchText.isEmpty {
            return areas
        } else {
            return areas.filter { $0.name.contains(searchText)
            }
        }
    }
}

#Preview {
    AreaListView()
}
