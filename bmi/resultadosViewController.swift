//
//  resultadosViewController.swift
//  bmi
//
//  Created by Christian González on 02/09/21.
//

import UIKit

class resultadosViewController: UIViewController {
    
    var IMC = 0.0

    @IBOutlet weak var labeldeResultado: UILabel!
    
    @IBOutlet weak var labelClasificacion: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (IMC<=18.5) {
            labelClasificacion.text = "PESO BAJO"
        }
        else if(IMC>18.5 && IMC<=24.9) {
            labelClasificacion.text = "PESO SALUDABLE"
        }
        else if(IMC>25 && IMC<=29.9) {
            labelClasificacion.text = "SOBREPESO"
        }
        else if(IMC>30 && IMC<=34.9) {
            labelClasificacion.text = "OBESIDAD 1º"
        }
        else if(IMC>35 && IMC<=39.9) {
            labelClasificacion.text = "OBESIDAD 2º"
        }
        else {
            labelClasificacion.text = "OBESIDAD MÓRBIDA"
        }
        labeldeResultado.text = String(IMC)
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
