//
//  ContentView.swift
//  WebBrowserDemo
//
//  Created by Tyler on 2023-11-02.
//

import SwiftUI
import WebKit


struct ContentView: View {
    @StateObject var model = WebViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                WebView(webView: model.webView)
                
                VStack {
                    Spacer()
                    NavigationLink {
                        SecondView()
                    } label: {
                        Text("Get Started")
                            .font(.body)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(maxHeight: .infinity)
                    }
                    .background(.black)
                    .frame(width: 300, height: 55)
                    .cornerRadius(26)

                }
                .padding(.bottom, 50)
            }
            .edgesIgnoringSafeArea(.all)
            .frame(maxWidth: .infinity)
            .background(Color.yellow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct WebView: UIViewRepresentable {
    typealias UIViewType = WKWebView

    let webView: WKWebView
    
    func makeUIView(context: Context) -> WKWebView {
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) { }
}

class WebViewModel: ObservableObject {
    let webView: WKWebView
    let url: URL
    
    init() {
        webView = WKWebView(frame: .zero)
        url = URL(string: "https://metablox.io/product/miner")!

        loadUrl()
    }
    
    func loadUrl() {
        webView.load(URLRequest(url: url))
    }
}
