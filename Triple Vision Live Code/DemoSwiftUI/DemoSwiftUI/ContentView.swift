//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by Don Miller on 8/18/20.
//  Copyright © 2020 GroundSpeed. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var todoList = ["Task 1", "Task 2", "Task 3", "Task 4", "Task 5", "Task 6"]
    
    var body: some View {
        
        NavigationView {
            List(todoList, id:\.self) { task in
                VStack(alignment: .leading) {
                    NavigationLink(destination: ContentDetail(task: task)) {
                        Text(task)
                    }
                }
            }
            .navigationBarTitle("SwiftUI TODO Example", displayMode: .inline)
            .background(NavigationConfigurator { nc in
                nc.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.blue]
            })
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct NavigationConfigurator: UIViewControllerRepresentable {
    
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
