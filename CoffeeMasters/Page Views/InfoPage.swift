//
//  InfoPage.swift
//  CoffeeMasters
//
//  Created by Camdyn Rasque on 2/23/25.
//

import SwiftUI
import WebKit

class WebInterfaceDialogs: NSObject, WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print(message.body)
    }
}

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView() // The UIKit View
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    // Optionally, you can add a method to handle navigation actions
    class Coordinator: NSObject {
        // Implement any needed delegate methods here if required
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
}

struct InfoPage: View {
    var body: some View {
        WebView(url: URL(string: "https://firtman.github.io/coffeemasters/webapp")!)
    }
}

#Preview {
    InfoPage()
}
