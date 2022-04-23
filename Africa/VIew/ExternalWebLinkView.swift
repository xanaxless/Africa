//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Yerkebulan Serikov on 23.04.2022.
//

import SwiftUI

struct ExternalWebLinkView: View {
    // MARK: - Property
    let animal: Animal
    // MARK: - Body
    var body: some View {
        GroupBox{
            HStack {
                Image(systemName: "globe")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                }.foregroundColor(.accentColor)
            }//HStack
        }//GroupBox
    }
}

// MARK: - PreView
struct ExternalWebLinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWebLinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
