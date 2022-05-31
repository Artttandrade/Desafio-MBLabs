//
//  ListTicketViewController.swift
//  MB Labs
//
//  Created by Convidados on 30/05/22.
//  Copyright © 2022 Convidados. All rights reserved.
//

import UIKit

class ListTicketViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var ticketTableView: UITableView!
    let listOfTickets: Array<Ticket> = [
        Ticket(id: 0, numberOfTickets: 1, code: "adsa2"),
        Ticket(id: 1, numberOfTickets: 1, code: "adsa2")
    ];
    
    let listOfEvents: Array<Event> = [
        Event(id: 1, title: "Jogos olimpicos", orgName: "La Salle", local: "La Salle", time: "19h", numberOfTickets: 100, valueOfTicket: 20, day: "12/03"),
        Event(id: 2, title: "Observatorio", orgName: "UFAM", local: "Mini Campus", time: "21h", numberOfTickets: 150, valueOfTicket: 10, day: "12/03"),
        Event(id: 3, title: "Feira de Tecnologia", orgName: "Samsung", local: "Studio 5", time: "18h", numberOfTickets: 100, valueOfTicket: 100, day: "12/03"),
        Event(id: 4, title: "Feira de Pesquisa", orgName: "Insituto Eldorado", local: "Manauara", time: "19h", numberOfTickets: 80, valueOfTicket: 90, day: "12/03"),
        Event(id: 5, title: "Evento de Empreendedorismo", orgName: "UEA", local: "Ocean", time: "20h30", numberOfTickets: 100, valueOfTicket: 40, day: "12/03"),
        Event(id: 6, title: "Olimpiada de Robos", orgName: "UFAM", local: "FT", time: "19h", numberOfTickets: 150, valueOfTicket: 20, day: "12/03")
    ];
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        listOfTickets[0].event = listOfEvents[0]
        listOfTickets[1].event = listOfEvents[1]
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("aqui")
        let cell = tableView.dequeueReusableCell(withIdentifier: "ticketCell", for: indexPath) as! ticketTableViewCell;
        
        
        cell.configure(title: listOfTickets[indexPath.row].event!._title, local: listOfTickets[indexPath.row].event!._local, time: listOfTickets[indexPath.row].event!._time);
        
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfTickets.count;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //guard let cell = tableView.cellForRow(at: indexPath) else { return }
        
        let story : UIStoryboard = UIStoryboard(name: "Main", bundle: nil);
        let result = story.instantiateViewController(withIdentifier: "TicketViewController") as! TicketViewController;
        
        result.ticket = listOfTickets[indexPath.row];
        
        navigationController?.pushViewController(result, animated: true);
        
        print("\(listOfEvents[indexPath.row]._title)");
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
