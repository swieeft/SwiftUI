//
//  AlertSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/11.
//

import SwiftUI

struct AlertSample: View {
    @State private var showingAlert: Bool = false
    @State private var showingActionSheet: Bool = false
    
    var body: some View {
        VStack(spacing: 30) {
            Button(action: {
                self.showingAlert = true
            }, label: {
                Text("ShowAlert")
            })
            .alert(isPresented: $showingAlert, content: {
                Alert(
                    title: Text("제목"),
                    message: Text("내용"),
                    primaryButton: .default(Text("확인"), action: {
                        print("확인")
                    }),
                    secondaryButton: .cancel(Text("취소")))
            })
            
            Button(action: {
                self.showingActionSheet = true
            }, label: {
                Text("ActionSheet")
            })
            .actionSheet(isPresented: $showingActionSheet, content: {
                ActionSheet(
                    title: Text("제목"),
                    message: Text("내용"),
                    buttons: [
                        .default(Text("버튼1")),
                        .default(Text("버튼2")),
                        .destructive(Text("버튼3")),
                        .cancel(Text("취소"))
                    ])
            })
        }
    }
}

struct AlertSample_Previews: PreviewProvider {
    static var previews: some View {
        AlertSample()
    }
}
