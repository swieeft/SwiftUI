//
//  TextSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/02.
//

import SwiftUI

struct TextSample: View {
    var body: some View {
        VStack(spacing: 30) {   // 세로 방향으로 뷰를 배열
            Text("폰트와 굵기 설정")
                .font(.title)   // 폰트 설정
                .fontWeight(.black) // 폰트 굵기
            
            Text("글자색은 foreground, 배경은 background")
                .foregroundColor(.white) // 글자색
                .padding() // 텍스트 주변 여백 설정
                .background(Color.blue) // 배경색 (Color 명시)
            
            Text("커스텀 폰트, 볼드체, 이탤릭체, 밑줄, 취소선")
                .font(.custom("Menlo", size: 16)) // 커스텀 폰트
                .bold() // 볼드
                .italic() // 이탤릭
                .underline() // 밑줄
                .strikethrough() // 취소선
            
            Text("라인수 제한과\n텍스트 정렬 기능입니다.\n이건 안 보입니다.")
                .lineLimit(2) // 최대 2줄
                .multilineTextAlignment(.trailing) // 다중행 문자열의 정렬
                .fixedSize() // 주어진 공간 크기가 작어도 텍스트를 모두 표현 되도록

            // 2개의 텍스트 연결
            (Text("자간과 기준선").kerning(8) + // 자간
            Text(" 조정도 쉽게 가능합니다.").baselineOffset(8) // 기준선
                .font(.system(size: 16)))
            
            // 수식어 순서에 따른 차이
            Text("🚘🚄✈️🚀")
                .background(Color.yellow)
                .padding()
            
            Text("🚘🚄✈️🚀")
                .padding()
                .background(Color.yellow)
        }
    }
}

struct TextSample_Previews: PreviewProvider {
    static var previews: some View {
        TextSample()
    }
}
