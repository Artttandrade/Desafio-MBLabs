//
//  ListEventsTableViewController.swift
//  MB Labs
//
//  Created by Convidados on 28/05/22.
//  Copyright © 2022 Convidados. All rights reserved.
//

import UIKit

class ListEventsTableViewController: UITableViewController {
    
    let listOfEvents: Array<Event> = [
        Event(id: 1, title: "Jogos olimpicos", orgName: "La Salle", local: "La Salle", time: "19h", numberOfTickets: 100, valueOfTicket: 20),
        Event(id: 2, title: "Observatorio", orgName: "UFAM", local: "Mini Campus", time: "21h", numberOfTickets: 150, valueOfTicket: 10),
        Event(id: 3, title: "Feira de Tecnologia", orgName: "Samsung", local: "Studio 5", time: "18h", numberOfTickets: 100, valueOfTicket: 100),
        Event(id: 4, title: "Feira de Pesquisa", orgName: "Insituto Eldorado", local: "Manauara", time: "19h", numberOfTickets: 80, valueOfTicket: 90),
        Event(id: 5, title: "Evento de Empreendedorismo", orgName: "UEA", local: "Ocean", time: "20h30", numberOfTickets: 100, valueOfTicket: 40),
        Event(id: 6, title: "Olimpiada de Robos", orgName: "UFAM", local: "FT", time: "19h", numberOfTickets: 150, valueOfTicket: 20)
    ];
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil);
        let event = listOfEvents[indexPath.row];
        cell.textLabel?.text = event._title;
        return cell;
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfEvents.count;
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
