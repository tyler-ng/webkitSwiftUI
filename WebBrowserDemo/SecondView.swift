//
//  SecondView.swift
//  WebBrowserDemo
//
//  Created by Tyler on 2023-11-02.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            Text("Second view")
        }
        .edgesIgnoringSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
