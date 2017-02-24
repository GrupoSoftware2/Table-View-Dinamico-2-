//
//  SiguienteViewController.swift
//  Table Dinamico en iOS 2
//
//  Created by alumno on 23/02/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class SiguienteViewController: UIViewController {

    
    @IBOutlet weak var lblnumero: UILabel!
    @IBOutlet weak var lbldescripcion: UILabel!
    
    var numero = ""
    var descripcion = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblnumero.text=numero
        lbldescripcion.text=descripcion

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
