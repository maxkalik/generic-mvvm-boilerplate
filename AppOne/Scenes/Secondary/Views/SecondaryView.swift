//
//  SecondaryView.swift
//  AppOne
//
//  Created by Maksim Kalik on 10/16/22.
//

import SwiftUI

struct SecondaryView<ViewModel: SecondaryViewModel>: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        Button {
            viewModel.buttonTap()
        } label: {
            Text(viewModel.title)
        }
    }
}
