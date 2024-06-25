//
//  meno_test.swift
//  Hangout
//
//  Created by cmStudent on 2024/06/21.
//

import SwiftUI

func saveText(_ textData:String, _ fileName:String) {
    guard let url = docURL(fileName) else {
        return
    }
    do {
        let path = url.path
        try textData.write(toFile: path, atomically: true, encoding: .utf8)
    } catch let error as NSError {
        print(error)
    }
}

func loadText(_ fileName:String) -> String? {
    return nil
}

func docURL(_ fileName:String) -> URL? {
    let fileManager = FileManager.default
    do {
        let docsUrl = try fileManager.url(
            for: .documentDirectory,
            in: .userDomainMask,
            appropriateFor: nil,
            create: false)
        let url = docsUrl.appendingPathComponent(fileName)
        return url
    } catch {
        return nil
    }
}

struct testView: View {
    
    @State var theText: String = ""
    @FocusState var isInputActive: Bool
    
    var body: some View {
        HStack {
            NavigationView {
                TextEditor(text:$theText)
                    .lineSpacing(10)
                    .border(Color.gray)
                    .padding()
                    .navigationTitle("メモ")
                    .focused($isInputActive)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                                    Button("読み込む") {
                                        if let data = loadText("sample") {
                                            theText = data
                                        }
                                    }
                                }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("保存") {
                                isInputActive = false
                                saveText(theText, "sample.txt")
                            }
                        }
                    }
            }
        }
    }
}
