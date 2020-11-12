//
//  ViewController.swift
//  tableview
//
//  Created by Alumno on 11/2/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var alumnos : [Alumno] = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! CeldaAlumnoController
        let alumno = alumnos[indexPath.row]
        
        celda.lblNombre.text = alumno.nombre
        celda.lblMatricula.text = alumno.matricula
        celda.lblCarrera.text = alumno.carrera
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        alumnos.append(Alumno(nombre: "Sofi", matricula: "123", carrera: "Ing. en Prod. Multimedia"))
        alumnos.append(Alumno(nombre: "Pablo", matricula: "ABC", carrera: "Ing. en Prod. Multimedia"))
        alumnos.append(Alumno(nombre: "Juan", matricula: "987", carrera: "Lic. en Derecho"))
        
    }


}

