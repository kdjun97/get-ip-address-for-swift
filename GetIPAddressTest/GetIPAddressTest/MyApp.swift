//
//  ContentView.swift
//  GetIPAddressTest
//
//  Created by 김동준 on 1/1/24
//

import SwiftUI

struct MyApp: View {
    @StateObject private var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        VStack {
            Text("IP Address : \(viewModel.myIPAddressString)")
            Spacer()
                .frame(height: 50)
            Button {
                viewModel.getIPButtonTapped()
            } label: {
                Text("Get IP Address")
                    .foregroundColor(.white)
                    .padding(.horizontal, 50)
                    .padding(.vertical, 20)
                    .background(.black)
            }
        }
        .padding()
    }
}

#Preview {
    MyApp()
}
