//
//  CustomButtonSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/18.
//

import SwiftUI

struct CustomButtonSample: View {
    
    @State private var isOn = true
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Custom Button Style 1") {}
                .buttonStyle(CustomButtonStyle(backgroundColor: .green))
            Button("Custom Button Style 2") {}
                .buttonStyle(CustomButtonStyle(cornerRadius: 20))
            
            Button("Custom Primitive Button Style 1") {}
                .buttonStyle(CustomPrimitiveButtonStyle())
            Button("Custom Primitive Button Style 2") {}
                .buttonStyle(CustomPrimitiveButtonStyle(minimumDuration: 5))
            
            Toggle("기본 토글", isOn: $isOn)
            Toggle("커스텀 토글", isOn: $isOn).toggleStyle(CustomToggleStyle())
        }
    }
}

struct CustomButtonSample_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonSample()
    }
}

struct CustomButtonStyle: ButtonStyle {
    var backgroundColor: Color = .blue
    var cornerRadius: CGFloat = 6
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .background(RoundedRectangle(cornerRadius: cornerRadius).fill(backgroundColor))
            .scaleEffect(configuration.isPressed ? 0.7 : 1.0)
    }
}

struct CustomPrimitiveButtonStyle: PrimitiveButtonStyle {
    var minimumDuration = 0.5
    
    func makeBody(configuration: Configuration) -> some View {
        ButtonStyleBody(configuration: configuration, minimumDuration: minimumDuration)
    }
    
    private struct ButtonStyleBody: View {
        let configuration: Configuration
        let minimumDuration: Double
        @GestureState private var isPressed = false
        
        var body: some View {
            let longPress = LongPressGesture(minimumDuration: minimumDuration)
                .updating($isPressed) { value, state, _ in
                    state = value
                }
                .onEnded { _ in
                    self.configuration.trigger()
                }
            
            return configuration.label
                .foregroundColor(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.orange))
                .scaleEffect(isPressed ? 0.6 : 1.0)
                .gesture(longPress)
        }
    }
}

struct CustomToggleStyle: ToggleStyle {
    let size: CGFloat = 30
    
    func makeBody(configuration: Configuration) -> some View {
        let isOn = configuration.isOn
        
        return HStack {
            configuration.label
            
            Spacer()
            
            ZStack(alignment: isOn ? .top : .bottom, content: {
                Capsule()
                    .fill(isOn ? Color.green : Color.red)
                    .frame(width: size, height: size * 2)
                
                Circle()
                    .frame(width: size - 2, height: size - 2)
                    .onTapGesture {
                        withAnimation {
                            configuration.isOn.toggle()
                        }
                    }
            })
        }
    }
}
