//
//  ListEventsViewController.swift
//  MB Labs
//
//  Created by Convidados on 28/05/22.
//  Copyright © 2022 Convidados. All rights reserved.
//

import UIKit

class ListEventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let listOfEvents: Array<Event> = [
        Event(id: 1, title: "Jogos olimpicos", orgName: "La Salle", local: "La Salle", time: "19h", numberOfTickets: 100, valueOfTicket: 20),
        Event(id: 2, title: "Observatorio", orgName: "UFAM", local: "Mini Campus", time: "21h", numberOfTickets: 150, valueOfTicket: 10),
        Event(id: 3, title: "Feira de Tecnologia", orgName: "Samsung", local: "Studio 5", time: "18h", numberOfTickets: 100, valueOfTicket: 100),
        Event(id: 4, title: "Feira de Pesquisa", orgName: "Insituto Eldorado", local: "Manauara", time: "19h", numberOfTickets: 80, valueOfTicket: 90),
        Event(id: 5, title: "Evento de Empreendedorismo", orgName: "UEA", local: "Ocean", time: "20h30", numberOfTickets: 100, valueOfTicket: 40),
        Event(id: 6, title: "Olimpiada de Robos", orgName: "UFAM", local: "FT", time: "19h", numberOfTickets: 150, valueOfTicket: 20)
    ];

    
    @IBOutlet weak var eventsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfEvents.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell", for: indexPath) as! eventTableViewCell;
        
        cell.configure(title: listOfEvents[indexPath.row]._title, local: listOfEvents[indexPath.row]._local, time: listOfEvents[indexPath.row]._time)
        //let event = listOfEvents[indexPath.row];
        //cell.textLabel?.text = event._title;
        return cell;
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
