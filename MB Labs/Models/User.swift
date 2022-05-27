//
//  User.swift
//  MB Labs
//
//  Created by Convidados on 27/05/22.
//  Copyright © 2022 Convidados. All rights reserved.
//

import UIKit

class User: NSObject {
    var _name: String;
    var _email: String;
    var _listOfEvents: Array<Event> = [];
    
    init(name: String, email: String, listOfEvents: Array<Event>){
        self._name = name;
        self._email = email;
        self._listOfEvents = listOfEvents;
    }
    
    
    func getName() -> String{
        return self._name;
    }
    
    func getEmail() -> String{
        return self._email;
    }
    
    func getListOfEvents() -> Array<Event>{
        return self._listOfEvents;
    }
    
}
