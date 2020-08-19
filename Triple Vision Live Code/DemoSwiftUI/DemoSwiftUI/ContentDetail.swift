//
//  ContentDetail.swift
//  DemoSwiftUI
//
//  Created by Don Miller on 8/18/20.
//  Copyright © 2020 GroundSpeed. All rights reserved.
//

import SwiftUI

struct ContentDetail: View {
    var task: String
    
    var body: some View {
        VStack {
            Text("You have chosen \(task)")
        }
        .navigationBarTitle(Text(task), displayMode: .inline)
    }

}

struct ContentDetail_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
