//
//  Ticket.swift
//  MB Labs
//
//  Created by Convidados on 27/05/22.
//  Copyright © 2022 Convidados. All rights reserved.
//

import UIKit

class Ticket: NSObject {
    
    var _id: Int;
    var _code: String
    var _numberOfTickets: Int;
    var event: Event?;
    
    init(id: Int, numberOfTickets: Int, code: String){
        self._id = id;
        self._numberOfTickets = numberOfTickets;
        self._code = code;
    }

}
