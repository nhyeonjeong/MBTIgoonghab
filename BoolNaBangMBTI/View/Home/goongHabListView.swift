//
//  goongHabListView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

import SwiftUI

struct goongHabListView: View {
    
    //임시 그림
    var url: URL = URL(string: "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA1MTNfODYg%2FMDAxNjgzOTgwNjAzNDYy.tLf7sFR2klD3k7P0kQAPDAY4LuqkMjVMVUNr0Wf1Tpog.u2Lhsdc3CZ30D2wsuwj3TNatWsRgdKQIWcOii5aS5ucg.PNG.zxc46055%2Fistp_%25281%2529.png&type=sc960_832") ?? URL(string: "http://naver.com")!
    
    let resultNumber: Bool = true

    @State var isShowingEditSheet: Bool = false
    var body: some View {

        VStack {
            ///사진, 사용자 MBTI
            HStack {
                AsyncImage(url: url) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 50)
                
                Text("ISTP\nㅇㅇㅇ님")
                
            }.font(.title)
           
            ///하트
            Image(systemName: "heart")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60)
                .foregroundColor(.pink)
            
            ///스크롤 뷰
            ScrollView {
                ForEach(0..<15) { _ in
                    Text("김김김       ISTP")
                        
                }
                .border(.green)
                .frame(width: 250)
            }.border(.pink)
                .font(.title)
                .padding(10)
            
            
            ///버튼
            Text("상대의 목록을 변경하고 싶다면")
            Text("Edit버튼을 누르세요")
            
            HStack {
                Spacer()
                
                Button(action: {
                    isShowingEditSheet.toggle()
                }, label: {
                    Text("Edit").padding(7)
                })
                .background(.yellow)
                .cornerRadius(5)
                
                Spacer()
                
                NavigationLink {
                    if resultNumber {
                        ResultProjectView()
                    } else {
                        ResultRomanticView()
                    }

                } label: {
                    Text("결과보기").padding(7)
                }
                .background(.yellow) //색이 구리네요
                .cornerRadius(5)
                
                Spacer()
            
                /*
                Button(action: {
                    
                    if resultNumber {
                        ResultProjectView()
                    } else {
                        ResultRomanticView()
                    }
                }, label: {
                    Text("결과보기").padding(7)
                })
                .background(.yellow) //색이 구리네요
                .cornerRadius(5)
                
               
                 */
                
            }
            .foregroundColor(.black)
       
        }
        .sheet(isPresented: $isShowingEditSheet) {
            GoongHabEditView()
        }

    }
}

struct goongHabListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            goongHabListView()
        }
    }
}
