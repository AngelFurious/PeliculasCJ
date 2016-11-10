//
//  PeliculasCollectionViewController.swift
//  PeliculasCJ
//
//  Created by B303-20 on 10/11/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import UIKit

class PeliculasCollectionViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var TablaPeliculasCollectionView: UICollectionView!
    
    var arrayPeliculas = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PeliculasBC.listarPeliculas { (arrayPeliculas) in
            self.arrayPeliculas = arrayPeliculas
            self.TablaPeliculasCollectionView.reloadData()
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arrayPeliculas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellIndentifier = "PeliculasCollectionViewCell"
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIndentifier, for: indexPath) as! PeliculasCollectionViewCell
        cell.objPelicula = self.arrayPeliculas[indexPath.row] as? Pelicula
        cell.actualizarData()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        
        let anchoPantalla = UIScreen.main.bounds.size.width
        let anchoCelda = (anchoPantalla - 30) / 2
        let altoCelda = anchoCelda / 0.604
        
        return CGSize(width: CGFloat(anchoCelda), height: CGFloat(altoCelda))
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
