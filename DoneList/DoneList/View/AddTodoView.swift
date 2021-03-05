//
//  AddTodoView.swift
//  DoneList
//
//  Created by Eric Seitz on 3/5/21.
//

import SwiftUI

struct AddTodoView: View {
    //: MARK - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var name: String = ""
    @State private var priority: String = "Normal"
    
    let priorities = ["High", "Normal", "Low"]
    
    //: MARK - BODY
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    //MARK: - TODONAME
                    TextField("Todo", text: $name)
                    
                    // MARK: - TODO PRIORITY
                    Picker("Priority", selection: $priority) {
                        ForEach(priorities, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    // MARK: - SAVE BUTTON
                } // END FORM
                Spacer()
            } // END VSTACK
            .navigationBarTitle("New Todo", displayMode: .inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }) {
                                        Image(systemName: "xmark")
                                    })
        } // END NAVIGATION
    }
}

//: MARK - PREVIEW
struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
