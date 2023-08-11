//
//  SafariTestView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

import SwiftUI
import WebKit

struct SafariTestView: View {
    @State private var TestView = false
    private let urlString: String = "https://www.16personalities.com/ko/%EB%AC%B4%EB%A3%8C-%EC%84%B1%EA%B2%A9-%EC%9C%A0%ED%98%95-%EA%B2%80%EC%82%AC"
    
    var body: some View {
        VStack(spacing: 40 ) {
            // 웹뷰 창
            WebView(url: URL(string: urlString)!).edgesIgnoringSafeArea(.all)
        }
    }
}


// WebView Struct

struct WebView: UIViewRepresentable {
    
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}



struct SafariTestView_Previews: PreviewProvider {
    static var previews: some View {
        SafariTestView()
    }
}
