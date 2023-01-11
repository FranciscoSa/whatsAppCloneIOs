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
    let mock = Mock()
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    buttonsAfterSearch
                    Divider()
                    VStack (spacing: 12){
                        ForEach(1..<14) { i in
                            generateChatCard(contactName: mock.chatList[i],
                                             message: mock.message[i],
                                             time: mock.time[i],
                                             color: mock.color[i])
                        }
                    }
                }
            }
            
            .navigationTitle("Conversas")
            .toolbar {
                ToolbarItem (placement: .navigationBarLeading) {
                    Button("Editar"){
                        print ("Click on Editar")
                    }
                }
                ToolbarItem (placement: .navigationBarTrailing) {
                    Button {
                        print ("Click on square and pencil")
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
    var buttonsAfterSearch: some View {
        Group {
            HStack {
                
                Button ("Listas de trasmissão"){
                    print("click on Listas de trasmissão")
                }
                
                Spacer()
                
                Button ("Novo Grupo"){
                    print("click on Listas de trasmissão")
                }
                
            }
        }.padding(.horizontal)
    }
}

extension ChatScreenView {
    func generateChatCard (contactName: String, message: String, time: String, color: Color) -> some View {
        var chatCard: some View {
            HStack (spacing:20) {
                Image(systemName: "square.and.pencil")
                    .frame(width: 55, height: 55)
                    .background(color)
                    .cornerRadius(30)
                
                VStack (alignment: .leading) {
                    HStack {
                        Text(contactName)
                            .bold()
                        
                        Spacer()
                        
                        Text (time)
                            .font(.system(size: 14, weight: .regular, design: .default))
                    }
                    
                    Text (message)
                        .font(.system(size: 14, weight: .light, design: .default))
                    
                    Divider()
                }
            }.padding(.horizontal)
        }
        
        return chatCard
    }
}

struct ChatScrrenView_Previews: PreviewProvider {
    static var previews: some View {
        ChatScreenView()
    }
}
