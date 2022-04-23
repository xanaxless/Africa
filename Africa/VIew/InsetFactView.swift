//
//  InsetFactView.swift
//  Africa
//
//  Created by Yerkebulan Serikov on 23.04.2022.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - Propertise
    let animal: Animal
    // MARK: - Body
    var body: some View {
        GroupBox{
            TabView{
                ForEach(animal.fact, id: \.self){ fact in
                    Text(fact)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight:148, idealHeight: 168, maxHeight: 180)
        }
    }
}

// MARK: - Preview
struct InsetFactView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
