//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Yerkebulan Serikov on 26.04.2022.
//

import SwiftUI

struct AnimalGridItemView: View {
    // MARK: - Property
    let animal: Animal
    // MARK: - Body
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
            
    }
}

// MARK: - Preview
struct AnimalGridItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalGridItemView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}