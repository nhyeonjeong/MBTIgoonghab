//
//  Data.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

import Foundation


enum MBTItype: Int, CaseIterable { //picker 위한 프로토콜
    case ENTJ, ENTP, INTJ, INTP, ESTJ, ESFJ, ISTJ, ISFJ
    case ENFJ, ENFP, INFJ, INFP, ESTP, ESFP, ISTP, ISFP

    var imageURL: String {
        switch self {
        case .ESTP :
            return "https://ddnews.co.kr/wp-content/uploads/2021/12/ESTP-%EC%9C%A0%ED%98%95.jpg"
        case .ESTJ :
            return "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMDZfMjQ4%2FMDAxNTgzNTA2MDU1NDAx._Vt3HadcvDiCcAfOw-icRWXPCZuw6UMtUr-twZDHzNcg.6IZ1DjprwDmbg9jSdT-TcNuarrzQJWbG57Rljy4Kfysg.JPEG.bibibibi_%2FIMG_2714.jpg&type=sc960_832"
        case .ESFP :
            return "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA3MTBfODMg%2FMDAxNjU3NDU3NTkyMDM2.gK5F65tO3Qgolu8jIX0MiTS-8Q6enriX8_bZt1G-uzYg.XaWBS1z_E1qgJehqfLN38uu8Z9JtRahr8dYBlh6rt98g.JPEG.mykshine%2FIMG_1732.jpg&type=sc960_832"
        case .ESFJ :
            return "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjAyMTBfMjQy%2FMDAxNjQ0NDU0MDQ1NzQ2.M4KazkMxnR2d4vhVZ3LeeAcTZu-kD5RE_6c61ULs2JIg.4IXYIq_Wz3U5KXLU2YXyHHWHf7D3qyQDcHZ7XItyZqQg.JPEG.himhim05%2FIMG_0227.jpg&type=sc960_832"
        case .ENFP :
            return "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA3MjRfMjM0%2FMDAxNjU4NjEyNjEzMDM4.BlZ8q0hlhhTT7Twh6WL9mqWILG8ccE2n8N_y7j-AmNkg.3QAZ1lvCdyXgj9usXgyMfiPNC8Q-IVcTJ2gRQJEYLSUg.JPEG.thy0215%2Fenfp.jpg&type=sc960_832"
        case .ENFJ :
            return "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA2MDhfMTIz%2FMDAxNTkxNjA2NjQwMTc0.-ius6Gxm7AQxrB8ESV8OIcnL74TM_AcOYXFdV_A5dkEg.cpH5aMJkId5nlIqynVsQ09A6mKz-5f4qLWMkfZAy2Sgg.JPEG.ggsnim371%2FIMG_1312.jpg&type=sc960_832"
        case .ENTP :
            return "https://i.namu.wiki/i/qC9jEbPvxgLfZ3zziblr8a0DDvJDde2zR1x65o9tJt_u05gvVbFU8cPK8wvvouD7T4ty3TuCfvAnQAwmVJfalw.webp"
        case .ENTJ :
            return "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA1MzBfMTky%2FMDAxNjUzODQ3OTk0MTUz.MFyZ-bkWQwUiIhO-vAcmfnJWoLSqXXwWG__R0oMZRLUg.zimdgl9XJT_rgnam4Gb0p4PiHPxQhIw9Q0ORfSjf5ckg.JPEG.tngkrdmlans%2FKakaoTalk_20220530_031159561.jpg&type=sc960_832"
        case .ISTP :
            return "https://www.16personalities.com/static/images/personality-types/avatars/estp-entrepreneur.png"
        case .ISTJ :
            return "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA3MTBfMjI1%2FMDAxNjU3NDU4MjE2ODk5.HDWGrVDY2ZhunAVmfasEDO5-wxLXHHABYCH15mWG6D4g.2EJeD52u3caL782d1SynN9gayO7SJ2Ev9kBJxkzFZcog.JPEG.keemramy_%2FIMG_1801.jpg&type=sc960_832"
        case .ISFP :
            return "https://i.namu.wiki/i/FlPHEen_T4qF10YXcjv_EqkCQugoJXGT2CAld3Ta20K4dA4TFDiGIzlVmUesLRNJrsrGsQHuZ-7j8vynDvB6TNfyORSKA2l0dS6sV248qTlJNun5JlzAi9ngTDpxVEsTLr3GNws467ySQPOoVZlUOz0bDYE68pxrQHKXgFaW9vM.webp"
        case .ISFJ :
            return "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjAyMjBfMTk4%2FMDAxNjQ1MzIyMjcyMDQy.fgRtsku9H1i6xmGhf5Qa9mFSam_Qfv0BAX09Y-rmXREg.iiCzzvXvSzFG0m19Q_F11Fppm7CiuXgaJiWfLEXgoNsg.JPEG.sarabang0930%2FScreenshot%25A3%25DF20220220%25A3%25AD103739%25A3%25DFNAVER.jpg&type=sc960_832"
        case .INFP :
            return "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA3MTBfMjAw%2FMDAxNjU3NDYzMzkyNjI1.0Wx4UG-rq_Ah0UiTP8ga0tSyJkRDy2mtv2aw2-lxt4Ag.5Ze-ldiaDoeYi5JAFdem6jvWw3YlsUNgGZQV51sVUpcg.JPEG.wave00320%2FIMG_6841.jpg&type=sc960_832"
        case .INFJ :
            return "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjAyMTJfNjIg%2FMDAxNjQ0NTkxODI2MTY1.TzrQnR92MgO2sUU0WHlbvJ46pAZrjNeQxWwhi7wgrj8g.ZxX3nSmotFTr23JVDXkOVX7Je46sJOODKjC4Vv7P6xUg.JPEG.cowstring102%2FIMG_7676.jpg&type=a340"
        case .INTP:
            return "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjExMjdfMTc0%2FMDAxNjY5NTQ2OTQ5NjI4.hV0WFJzt0r46tZsLhBdRcNXKLuV2pk9Q1S5gH7BfdSsg.6OWj_PN9AonlIt_ODZtZ2IIqNYUlSIysx8MLlFCIlnUg.JPEG.dahye2581%2F1669546931862.jpg&type=sc960_832"
        case .INTJ :
            return "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA2MThfOTAg%2FMDAxNTkyNDU4NjU4MjM2.ax-QUU_yuLHQhj0aPM1EEA0ZaziqX0Ho2BR6RXCPJ80g.0MXRebYOprCpH8kkW9e-mYgl_k22e7T8Y_49IWcWnFog.JPEG.plac08han%2FP20200614_193830000_851A72E4-9605-4EAC-B656-0C77F1041ECF.jpg&type=sc960_832"

            
        }
    }

    
    // 홈뷰 - Mbti별 대처법
    var howToFriend: String {
        switch self {
        case .ESTP :
            return "오늘 집에 안간다~ 라고 외치면서 밤새 흥청망청 술 먹기\n나 오늘 정말 흥청망청 놀아보고 싶어 라고 하면서 ESTP랑 첫차시간까지 놀자고 하기"
        case .ESTJ :
            return "ESTJ 관심 분야에 대해 이것저것 물어보기(단,한신한 질문은 절대금지)\n 도서관에서 책 5권 고른 다음 다 읽어봤냐고 물어보기\n최대한 지적으로 보이는 질문하기"
        case .ESFP :
            return "너 없으면 모임이 진행이 안돼ㅜ 라고 말하며 제발 모임에 와달라고하기\n모임에 안간다고 하면 ESFP없는 모임이 무슨 소용이냐고 자신도 안간다고 하기"
        case .ESFJ :
            return "닥치는 대로 약속 만들어서 365일 ESFJ불러서 놀기\nESFJ랑 친해지고 싶었는데, 낯을 가려서 못 다가갔다고 말하면, 그 다음부터 ESFJ가 알아서 함"
        case .ENFP :
            return "친구 중에 ENFP가 제일 좋다고 하면서 같이 찍은 사진 프사로 해놓기 \nENFP 카톡 저장 이름 뒤에만 ❤️있다고 강조하기"
        case .ENFJ :
            return "ENFJ가 어떤 것을 해주든지 고맙다고 감동하기 \n말은 안 했지만, 항상 ENFJ가 묵묵히 애쓰는 것 같다고 인정해주며 존경의 눈빛 발사하기"
        case .ENTP :
            return "세상에서 가장 웃기다면서, 배 움켜잡고 폭소하기 \n웬만한 TV예능보다 ENTP랑 노는게 재밌다고 하기"
        case .ENTJ :
            return "천재라서 너무 믿음직스럽다고 호들갑 떨면서 복종하기 \n 여행가서 ENTJ가 하자는대로 다하기 \n역시 ENTJ라서 여행계획이 최고다라고 엄지척하기"
        case .ISTP :
            return "틈 날 때마다 ISTP에게 선물주고 절대 생색 내지 않기\n주변에서 ISTP가 가장 이성적으로 상담을 잘해준다고 조언을 구한뒤, 흘리듯 ISTP가 말한 선물 툭 던져주기"
        case .ISTJ :
            return "ISTJ가 결정 못하고 고민할 때마다, 한방에 해결책 제시해주기\n단, 잘난척은 금물"
        case .ISFP :
            return "ISFP를 집에 초대해서, 푹신한 침대에 눕히고 먹을 것 쥐어주거나 넷플릭스 틀어주기\nISFP 생일 때 쿠션감 좋은 바디필로우 사주기"
        case .ISFJ :
            return "ISFJ랑 친해지려고 오바하지말고 최대한 예의 바르고 착하게 행동하기"
        case .INFP :
            return "무조건적인 사랑으로 품에 안고 오구오구 내새끼 해주기\nINFP가 무례했고 잘못한 상황이라고 인정이 되더라도 무조건 상대방 욕해주면서 공감해주기"
        case .INFJ :
            return "INFJ가 해주는 일마다 감동하면서 장문으로 카톡 보내기\n주변에 의지할 수 있는 사람이 INFJ뿐이라고 말하기\n감동의 카톡을 1년에 여러번 나누어 보내기"
        case .INTP:
            return "말할 때마다 INTP 얼굴 보면서 경청하고, 적절한 호응과 리액션 해주기\n얼굴 보면서 경청하는 것이 포인트"
        case .INTJ :
            return "INTJ랑 마주칠 때마다 과자, 초콜릿 같은 간식거리 손에 쥐어주기 \n만약, 다이어트 중이라면 마데카솔,비타민 등 쥐어주기"
        }
    }
    
    // 마이페이지뷰 - Mbti정보 (웹뷰로 보여주기)
    var mbtiURL: String {
        switch self {
        case .ESTP :
            return ""
        case .ESTJ :
            return ""
        case .ESFP :
            return ""
        case .ESFJ :
            return ""
        case .ENFP :
            return ""
        case .ENFJ :
            return ""
        case .ENTP :
            return ""
        case .ENTJ :
            return ""
        case .ISTP :
            return ""
        case .ISTJ :
            return ""
        case .ISFP :
            return ""
        case .ISFJ :
            return ""
        case .INFP :
            return ""
        case .INFJ :
            return ""
        case .INTP:
            return ""
        case .INTJ :
            return ""
        }
    }
}



struct Profile: Identifiable {
    var id: UUID = UUID()
    var name: String
    var mbti: MBTItype
    var gender: String

}

//사용자
var user: Profile = Profile(name: "", mbti: .ISTP, gender: "")

struct Opponent: Identifiable {
    var id: UUID = UUID()
    var oppName: String
    var oppMbti: MBTItype
}

class OpponentStore : ObservableObject {
    @Published var opponents: [Opponent] = [
        //Opponent(oppName: "윤진영", oppMbti: .ISTP)
    ]
    
    
    
    func removeOpp(at offsets: IndexSet) {
        opponents.remove(atOffsets: offsets)
        
    }
    
    func addOpp(opponent: Opponent) {
        
        opponents.append(opponent)
        
        
    }
    
}


//CircleView위한 데이터 /현정
struct Cases: Identifiable {
    var id: UUID = UUID()
    var name: String
    var mbti: String // 나중에 열거형으로 바꾸기

}


class PersonStore: ObservableObject {
    //데이터 있다 치고!
    @Published var casePerson: [[Cases]] = [[Cases(name: "남현정", mbti: "ESTP"),Cases(name: "김종찬", mbti: "ESFP")],
                                            [Cases(name: "박명수", mbti: "ISTP")],
                                            [Cases(name: "유재석", mbti: "ISFP"), Cases(name: "윤진영", mbti: "ISTP")],
                                            [Cases(name: "임병구", mbti: "ENFP"),Cases(name: "짱구", mbti: "ENTP")],
                                            [Cases(name: "정준하", mbti: "ENFJ")]
    ]
    
    func addCases() {
//        ForEach(caseNumber, id:\.self) { i in
//
//        }
    }
    
}

//연애궁합
let mbtiScore: [[Int]] = [
//    [3,4,4,5,3,4,4,5,2,3,2,3,1,2,1,2], //INFP
//    [4,3,5,4,4,3,5,4,3,2,3,2,2,1,2,1], //ENFP
//    [4,5,3,4,4,5,3,4,1,2,1,2,2,3,2,3], //INFJ
//    [5,4,4,3,5,4,4,3,2,1,2,1,3,2,3,2], //ENFJ
//    [4,5,3,4,4,5,3,4,1,2,1,2,2,3,2,3], //INTJ
//    [5,4,4,3,5,4,4,3,2,1,2,1,3,2,3,2], //ENTJ
//    [3,4,4,5,3,4,4,5,2,3,2,3,1,2,1,2], //INTP
//    [4,3,5,4,4,3,5,4,3,2,3,2,2,1,2,1], //ENTP
//    [1,2,2,3,1,2,2,3,4,5,4,5,3,4,3,5], //ISFP
//    [2,1,3,2,2,1,3,2,5,4,5,4,4,3,4,3], //ESFP
//    [1,2,2,3,1,2,2,3,4,5,4,5,3,4,3,4], //ISTP
//    [2,1,3,2,2,1,3,2,5,4,5,4,4,3,4,3], //ESTP
//    [2,3,1,2,2,3,1,2,3,4,3,4,4,5,4,5], //ISFJ
//    [3,2,2,1,3,2,2,1,4,3,4,3,5,4,5,4], //ESFJ
//    [2,3,1,2,2,3,1,2,3,4,3,4,4,5,4,5], //ISTJ
//    [3,2,2,1,3,2,2,1,4,3,4,3,5,4,5,4], //ESTJ
    //
    [1,2,3,3,2,1,2,1,2,3,3,5,4,4,3,5],  //ENTJ
    [2,4,3,3,4,4,5,5,3,2,3,3,2,1,2,1],  //ENTP
    [3,3,3,2,2,1,3,1,3,3,3,4,5,5,3,4],  //INTJ
    [3,3,2,3,4,5,3,5,5,3,4,2,2,1,2,1],  //INTP
    [2,4,2,4,3,2,3,3,1,3,1,5,1,3,3,5],  //ESTJ
    [1,4,1,5,2,3,3,3,3,4,2,3,3,2,5,3],  //ESFJ
    [2,5,3,3,3,3,3,2,1,5,1,4,3,3,2,4],  //ISTJ
    [1,5,1,5,3,3,2,2,2,5,2,3,3,3,4,1],  //ISFJ
    [2,3,3,5,1,3,1,2,4,2,3,3,4,4,5,3],  //ENFJ
    [3,2,3,3,4,4,5,5,2,3,3,2,1,1,1,3],  //ENFP
    [3,3,3,4,1,2,1,2,3,3,3,1,5,5,5,3],  //INFJ
    [5,3,4,2,5,3,4,3,3,2,1,3,1,2,2,2],  //INFP
    [4,2,5,2,1,3,3,3,4,1,5,1,3,2,3,3],  //ESTP
    [4,1,5,1,3,2,3,3,4,1,5,2,2,2,3,3],  //ESFP
    [3,2,3,2,3,5,2,4,5,1,5,1,3,3,2,2],  //ISTP
    [5,1,4,1,5,3,4,1,3,3,3,2,3,3,2,1]   //ISFP
      
    /*
     ENTJ,ENTP,INTJ,INTP,ESTJ,ESFJ,ISTJ,ISFJ,ENFJ,ENFP,INFJ,INFP,ESTP,ESFP,ISTP,ISFP
     */
]
