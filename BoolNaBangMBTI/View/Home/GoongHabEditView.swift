//
//  GoongHabEditView.swift
//  BoolNaBangMBTI
//
//  Created by 남현정 on 2023/08/08.
//

import SwiftUI

struct GoongHabEditView: View {

    @ObservedObject var opponentStore: OpponentStore
    @Binding var isShowingEditSheet: Bool
    
    @State var newName: String = ""
    @State var newMbti: MBTItype = MBTItype.ESTP //피커
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("이름", text: $newName)
//                    TextField("mbti", text: $newMbti)
                    Spacer()
                    Picker("MBTI", selection: $newMbti) {
                        ForEach(MBTItype.allCases, id:\.self) { mbti in
                            Text(String(describing: mbti)).tag(mbti)

                        }
                    }
                    Spacer()
                    Button {//이름비어있으면 추가안되도록 추가로 해야함
                        opponentStore.addOpp(opponent: Opponent(oppName: newName, oppMbti: newMbti))
                        newName = ""
                    } label: {
                            Image(systemName: "plus")
                    }.disabled(newName.isEmpty)
                    
                }.padding()
                    .border(.red)
                
                List {
                    ForEach (opponentStore.opponents) {member in
                        HStack {
                            Text("\(member.oppName)")
                            Spacer()
                            Text("\(String(describing: member.oppMbti))") //Int타입인 열거형을 string으로 나오게
                            Spacer()
                        }
                    }
                    //삭제
                    .onDelete { indexSet in
                        opponentStore.removeOpp(at: indexSet)
                    }
                    
                }.listStyle(.plain)
                
                
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("완료") {
                        isShowingEditSheet.toggle()
                    }
                }
            }
        }
        
    }
    

}

struct GoongHabEditView_Previews: PreviewProvider {
    static var previews: some View {



 
        GoongHabEditView(opponentStore: OpponentStore(), isShowingEditSheet: .constant(true))
        

    }
}
