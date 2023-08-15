//
//  TestView.swift
//  BoolNaBangMBTI
//
//  Created by 김종찬 on 2023/08/15.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        VStack {
            Button {
                print("\(mbtiScore[MBTItype.ESFP.rawValue][MBTItype.ENFP.rawValue])")
            } label: {
                Text("ENFJ")
            }

        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
