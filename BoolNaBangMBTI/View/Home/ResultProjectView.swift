//
//  ResultProjectView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

import SwiftUI



struct ResultProjectView: View {
    var personStore: PersonStore = PersonStore()
    var body: some View {
        VStack{
            Text("프로젝트 궁합")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
            CircleView(personStore: personStore)
            
            
            
            
        }
    }
    
}
    
    


struct ResultProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ResultProjectView()
    }
}
