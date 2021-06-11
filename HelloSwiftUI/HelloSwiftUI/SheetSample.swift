//
//  SheetSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/11.
//

import SwiftUI

struct SheetSample: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button(action: {
            self.showingSheet.toggle()
        }, label: {
            Text("Present")
                .font(.title)
                .foregroundColor(.blue)
        })
        .sheet(isPresented: $showingSheet, onDismiss: {
            print("Dismissed")
        }, content: {
//            PresentedView()
            PresentedView(isPresented: $showingSheet)
        })
    }
}

struct SheetSample_Previews: PreviewProvider {
    static var previews: some View {
        SheetSample()
    }
}

struct PresentedView: View {
//    @Environment(\.presentationMode) var presentationMode
    @Binding var isPresented: Bool
    
    var body: some View {
//        Button(action: {
//            if self.presentationMode.wrappedValue.isPresented {
//                self.presentationMode.wrappedValue.dismiss()
//            }
//        }, label: {
//            Text("Tap to Dismiss")
//                .font(.title)
//                .foregroundColor(.red)
//        })
        Button(action: {
            self.isPresented = false
        }, label: {
            Text("Tap to Dismiss")
                .font(.title)
                .foregroundColor(.red)
        })
    }
}
