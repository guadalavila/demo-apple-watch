//
//  PhoneConnector.swift
//  WatchApp WatchKit Extension
//
//  Created by Alavila Guadalupe on 28/07/23.
//

import Foundation

import WatchKit
import WatchConnectivity // Added

final class PhoneConnector: NSObject {
  
  //session: objeto que inicia la comunicacion entre una extensión WatchKit y su aplicación iOS complementaria.
  var session: WCSession
  
  init(session: WCSession = .default) {
    self.session = session
    super.init()
    if WCSession.isSupported() {
        session.delegate = self
        session.activate()
      
    }
  }
  
}

extension PhoneConnector: WCSessionDelegate {
  func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
  
  }
}
