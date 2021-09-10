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
    
    @IBOutlet weak var imagenCambiada: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (IMC<=18.5) {
            labelClasificacion.text = "PESO BAJO"
            imagenCambiada.image = UIImage(named: String("1.png"))
        }
        else if(IMC>18.5 && IMC<=24.9) {
            labelClasificacion.text = "PESO SALUDABLE"
            imagenCambiada.image = UIImage(named: String("2.png"))
        }
        else if(IMC>25 && IMC<=29.9) {
            labelClasificacion.text = "SOBREPESO"
            imagenCambiada.image = UIImage(named: String("3.png"))
        }
        else if(IMC>30 && IMC<=34.9) {
            labelClasificacion.text = "OBESIDAD 1º"
            imagenCambiada.image = UIImage(named: String("4.png"))
        }
        else if(IMC>35 && IMC<=39.9) {
            labelClasificacion.text = "OBESIDAD 2º"
            imagenCambiada.image = UIImage(named: String("5.png"))
        }
        else {
            labelClasificacion.text = "OBESIDAD MÓRBIDA"
            imagenCambiada.image = UIImage(named: String("6.png"))
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
