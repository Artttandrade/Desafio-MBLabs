//
//  EventScreenViewController.swift
//  MB Labs
//
//  Created by Convidados on 30/05/22.
//  Copyright © 2022 Convidados. All rights reserved.
//

import UIKit

class EventScreenViewController: UIViewController {
    
    var numberOfTicketsToBuy: Int = 0;
    
    @IBOutlet var titleLabel: UILabel?;
    @IBOutlet var orgnameLabel: UILabel?;
    @IBOutlet var timeLabel: UILabel?;
    @IBOutlet var localLabel: UILabel?;
    @IBOutlet var dateLabel: UILabel?;
    @IBOutlet var valueOfTicketLabel: UILabel?;
    @IBOutlet var numberOfTicketsLabel: UILabel?;
    
    @IBOutlet var ticketsToBuy: UILabel?;
    
    @IBAction func stepperValueChanged(_ sender: UIStepper){
        ticketsToBuy?.text = Int(sender.value).description;
        numberOfTicketsToBuy = Int(sender.value);
    }
    
    @IBAction func buyTickets(){
        if(numberOfTicketsToBuy == 0) {
            print("No tickets to buy")
            
            return
        }
        
        print( "\(numberOfTicketsToBuy) tickets buyed");
        
        return;
        
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let titulo = titleLabel?.text {
            titleLabel?.text = "\(titulo): Idade da pedra";
        }

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
