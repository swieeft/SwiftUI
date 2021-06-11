//
//  PopoverSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/11.
//

import SwiftUI

struct PopoverSample: View {
    
    @State var showingPopover = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.showingPopover.toggle()
            }, label: {
                Text("Popover Button").font(.largeTitle)
            })
        }
        .popover(
            isPresented: $showingPopover,
            attachmentAnchor: .rect(.bounds),
            arrowEdge: .top,
            content: popoverContents)
    }
    
    func popoverContents() -> some View {
        VStack(alignment: .leading) {
            HStack {
                Button(action: {
                    self.showingPopover = false
                }, label: {
                    Text("Cancel").foregroundColor(.red)
                })
                Spacer()
                Text("New Event").font(.headline)
                Spacer()
                Button("Add(+)") {
                    
                }
            }
            
            Divider().padding(.bottom, 8)
            
            Text("Title")
            TextField("제목", text: .constant(""))
            Text("Contents")
            TextField("내용", text: .constant(""))
            Spacer()
        }
        .padding()
    }
}

struct PopoverSample_Previews: PreviewProvider {
    static var previews: some View {
        PopoverSample()//.previewDevice(PreviewDevice(rawValue: "iPad Air (4th generation)"))
    }
}
