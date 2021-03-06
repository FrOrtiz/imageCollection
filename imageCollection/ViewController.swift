import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    //Array con el que rellenaremos los labels de las imagenes
    let products = ["barraPan", "croissant", "pastel", "tarta", "bombones", "donut"]
    
    //Array que contiene las imagenes
    let productImages: [UIImage] = [
        
        UIImage(named: "barraPan")!,
        UIImage(named: "croissant")!,
        UIImage(named: "pastel")!,
        UIImage(named: "tarta")!,
        UIImage(named: "bombones")!,
        UIImage(named: "donut")!,
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Esto se puede hacer desde el storyboard, arrastrando el collection al icono del view controller
            //seleccionando delegate y datasource.
//        collectionView.dataSource = self
//        collectionView.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Funcion que se encarga de pintar las celdas, segun el numero de elementos en el array
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //Numero de huecos que va a tener que pintar
        return products.count
    }

    //Funcion que rellena la celda y la muestra
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //Referencia a la celda
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! MyCollectionViewCell
        
        //Asigna el contenido al label de la celda
        cell.productLabel.text = products[indexPath.item]
        //Asigna las imagenes al imageView de la celda
        cell.productImage.image = productImages[indexPath.item]
        
        //Pinta la celda ya cargada
        return cell
        
    }
}

