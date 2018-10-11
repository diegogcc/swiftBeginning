//
//  CarrosViewController.swift
//  FoodTracker
//
//  Created by Diego Campo on 10/9/18.
//  Copyright © 2018 Diego Campo. All rights reserved.
//

import UIKit

class CarrosViewController: UIViewController {
    @IBOutlet weak var labelTitulo: UILabel!
    var objetoMazda3Mini:Mazda3Mini?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTitulo.text = "Car Factory"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func crearMazda(_ sender: UIButton) {
        objetoMazda3Mini = Mazda3Mini()
        print("objeto mazda creado")
    }
    
    @IBAction func mostrarPropiedades(_ sender: UIButton) {
        if objetoMazda3Mini==nil {
            print("el objeto no existe todavía")
        }else{
            print("color: \(objetoMazda3Mini!.color), tamaño: \(objetoMazda3Mini!.tamanho), puertas: \(objetoMazda3Mini!.numeroPuertas),precio: \(objetoMazda3Mini!.precio) y porcentaje de carga: \(objetoMazda3Mini!.procentajeCarga)")
        }
    }
    
    @IBAction func encenderMazda(_ sender: UIButton) {
        if objetoMazda3Mini != nil{
            objetoMazda3Mini!.encender()
        }
    }
    
    @IBAction func acelerar(_ sender: UIButton) {
        if objetoMazda3Mini != nil{
            objetoMazda3Mini!.acelerar()
        }
    }
    
    @IBAction func recargar(_ sender: UIButton) {
        if objetoMazda3Mini != nil{
            objetoMazda3Mini!.recargar()
        }
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
