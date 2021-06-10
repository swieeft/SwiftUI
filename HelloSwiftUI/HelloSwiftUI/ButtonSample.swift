//
//  ButtonSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/08.
//

import SwiftUI

struct ButtonSample: View {
    var body: some View {
        
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                Button("Button") {
                    print("button1")
                    
                }
                
                Button(action: {
                    print("button2")
                }, label: {
                    Text("Button")
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                })
                
                Button(action: {
                    print("button3")
                }, label: {
                    Circle()
                        .stroke(lineWidth: 2)
                        .frame(width: 80, height: 80)
                        .overlay(Text("Button"))
                })
                .accentColor(.green)
            }
            
            HStack(spacing: 20) {
                Button(action: {
                    print("button4")
                }, label: {
                    Image("swiftUI")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 120, height: 120)
                })
                
                Button(action: {
                    print("button5")
                }, label: {
                    Image(systemName: "play.circle")
                        .buttonStyle(PlainButtonStyle())
                        .imageScale(.large)
                        .font(.largeTitle)
                })
            }.padding()
            
            Button("DefaultButtonStyle") {}
                .buttonStyle(DefaultButtonStyle())
            
            Button("BorderlessButtonStyle") {}
                .buttonStyle(BorderlessButtonStyle())
            
            Button("PlainButtonStyle") {}
                .buttonStyle(PlainButtonStyle())
            
            HStack(spacing: 20) {
                Image(systemName: "person.circle").imageScale(.large).onTapGesture {
                    print("onTapGesture")
                }
                
                Button(action: {
                    print("buttonTap")
                }, label: {
                    Image(systemName: "person.circle").imageScale(.large)
                })
            }
        }
    }
}

struct ButtonSample_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSample()
    }
}
