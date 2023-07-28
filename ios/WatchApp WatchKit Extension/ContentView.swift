//
//  ContentView.swift
//  WatchApp WatchKit Extension
//
//  Created by Alavila Guadalupe on 28/07/23.
//

import SwiftUI

struct ContentView: View {
  var phoneConnector = PhoneConnector()

  var body: some View {
      VStack(spacing: 5) {
          Text("Send to Watch")
    Button {
        self.sendMessage()
          } label: {
        Text("Send")
          }
      }
  }
  
  private func sendMessage() {
      let randomNumber = String(Int.random(in: 0..<100))
      let message: [String: Any] = ["watchMessage": randomNumber]
      self.phoneConnector.session.sendMessage(message, replyHandler: nil) { (error) in
          print(error.localizedDescription)
      }
  }
  
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
