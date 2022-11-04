//
//  InfoPage.swift
//  CoffeShop
//
//  Created by Joseph Murillo on 31/10/22.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let url = URL(string: "https://github.com/JosephM2425")!
        webView.load(URLRequest(url: url))
    }
}

struct InfoPage: View {
    var body: some View {
        WebView()
    }
}

struct InfoPage_Previews: PreviewProvider {
    static var previews: some View {
        InfoPage()
    }
}
