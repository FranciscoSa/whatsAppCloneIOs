//
//  ChatScreenView.swift
//  whatsAppClone
//
//  Created by Francisco Santana Cardoso on 09/01/23.
//

import Foundation
import SwiftUI

struct ChatScreenView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            
            chatListRow
            
            .navigationTitle("Conversas")
            .toolbar {
                ToolbarItem (placement: .navigationBarLeading) {
                    Button("Editar"){
                        print ("Click on Editar")
                    }
                }
                ToolbarItem (placement: .navigationBarTrailing) {
                    Button {
                        print ("Clic on square and pencil")
                    } label: {
                        Image(systemName: "square.and.pencil")
                    }
                }
            }
        }
        .searchable(text: $searchText) {
            
        }
    }
}

extension ChatScreenView {
    var chatListRow: some View {
        List {
            Section {
                Text (searchText)
                Text (searchText)
                Text (searchText)
                Text (searchText)
                Text (searchText)
                Text (searchText)
                Text (searchText)
            }
        }.listStyle(.grouped)
    }
}

struct ChatScrrenView_Previews: PreviewProvider {
    static var previews: some View {
        ChatScreenView()
    }
}
