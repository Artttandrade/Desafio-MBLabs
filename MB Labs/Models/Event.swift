//
//  Event.swift
//  MB Labs
//
//  Created by Convidados on 27/05/22.
//  Copyright © 2022 Convidados. All rights reserved.
//

import UIKit

class Event: NSObject {
    
    var _id: Int;
    var _orgName: String;
    var _local: String;
    var _time: String;
    var _numberOfTickets: Int;
    
    init(id: Int, orgName: String, local: String, time: String, numberOfTickets: Int){
        self._id = id;
        self._orgName = orgName;
        self._local = local;
        self._time = time;
        self._numberOfTickets = numberOfTickets;
    }
    
    func getId() -> Int{
        return self._id
    }
    
    func getOrgName() -> String{
        return self._orgName;
    }
    
    func getLocal() -> String{
        return self._local;
    }
    
    func getTime() -> String{
        return self._time;
    }
    
    func getNumberOfTickets() -> Int{
        return self._numberOfTickets
    }
    
    
    func sellTicket(countOfTickets: Int){
        self._numberOfTickets = self._numberOfTickets - countOfTickets;
    }

}
