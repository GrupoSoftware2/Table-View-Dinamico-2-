//
//  ViewController.swift
//  Table Dinamico en iOS 2
//
//  Created by alumno on 23/02/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var arregloElementos = Array<Elemento>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...10 {
            
            let elemento = Elemento()
            
            elemento.numero="\(i)"
            
            elemento.descripcion="Descripcion larga del elemento \(elemento.numero)"
            
            if i % 2 == 0 {
                elemento.color = UIColor.black
            }else{
                elemento.color = UIColor.red
            }
            arregloElementos.append(elemento)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arregloElementos.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for : indexPath) as! CeldasTableViewCell
        
        let indice = indexPath.row
        
        let elemento = arregloElementos[indice]
        
        cell.lblnumero.text = elemento.numero
        cell.lbldescripcion.text = elemento.descripcion
        cell.lblcolor.backgroundColor = elemento.color
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        let texto = cell?.textLabel?.text
        
        var alertController:UIAlertController
        //alertController = UIAlertController(title: "Alert", message: "Dato \(seccion+1).\(fila+1)", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController = UIAlertController(title: "Alert", message: " \(texto!)", preferredStyle: UIAlertControllerStyle.alert)
        let accionOk  = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
            print("Se escogio: \(texto!)")
        })
        
        alertController.addAction(accionOk)
        self.present(alertController, animated: true, completion: {
            
        })
        
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
}

