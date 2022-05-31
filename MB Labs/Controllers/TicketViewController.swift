//
//  TicketViewController.swift
//  MB Labs
//
//  Created by Convidados on 30/05/22.
//  Copyright © 2022 Convidados. All rights reserved.
//

import UIKit

class TicketViewController: UIViewController {
    
    var ticket: Ticket?;
    
    @IBOutlet var titleLabel: UILabel?;
    @IBOutlet var orgnameLabel: UILabel?;
    @IBOutlet var timeLabel: UILabel?;
    @IBOutlet var localLabel: UILabel?;
    @IBOutlet var dateLabel: UILabel?;
    @IBOutlet var valueOfTicketLabel: UILabel?;
    @IBOutlet var numberOfTicketsLabel: UILabel?;
    @IBOutlet var codeLabel: UILabel?;
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel?.text! += "\(ticket!.event!._title)"
        orgnameLabel?.text! += "\(ticket!.event!._orgName)";
        timeLabel?.text! += "\(ticket!.event!._time)"
        localLabel?.text! += "\(ticket!.event!._local)"
        dateLabel?.text! += "\(ticket!.event!._day)";
        valueOfTicketLabel?.text! += "\(ticket!.event!._valueOfTicket)";
        numberOfTicketsLabel?.text! += "\(ticket!._numberOfTickets)";
        codeLabel?.text! += "\(ticket!._code)";

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
