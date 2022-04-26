//
//  CenterModifier.swift
//  Africa
//
//  Created by Yerkebulan Serikov on 26.04.2022.
//

import SwiftUI

struct CenterModifier: ViewModifier{
    func body(content: Content) -> some View{
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
