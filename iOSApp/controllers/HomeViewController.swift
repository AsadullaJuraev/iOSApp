//
//  HomeViewController.swift
//  iOSApp
//
//  Created by Asadulla Juraev on 05.01.2021.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    //MARK: - VARIABLE
    
    @IBOutlet weak var collectionView: UICollectionView!
    let numberOfColumns: CGFloat = 2
    var items: Array<Item> = Array()
    
    //MARK: - MAIN ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initviews()
        
    }

    func initviews(){
        addNavigationBar()
        append()
        CollSettings()
        
        
    }
    
    // MARK: - Appending
    
    func append(){
        items.append(Item(title: "Best Coding", image: "im_image"))
        items.append(Item(title: "Amazing Code", image: "im_image2"))
        items.append(Item(title: "Best Coding", image: "im_image"))
        items.append(Item(title: "Amazing Code", image: "im_image2"))
        items.append(Item(title: "Best Coding", image: "im_image"))
        items.append(Item(title: "Amazing Code", image: "im_image2"))
        items.append(Item(title: "Best Coding", image: "im_image"))
        items.append(Item(title: "Amazing Code", image: "im_image2"))
        items.append(Item(title: "Best Coding", image: "im_image"))
        items.append(Item(title: "Amazing Code", image: "im_image2"))
    }
    
    // MARK: - Navigation
    
    func addNavigationBar(){
        title = "Collection View"
        let rightButton = UIImage(named: "ic_right")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: rightButton, style: .plain, target: self, action: #selector(rightTapped))
    }
    
    @objc func rightTapped(){
        callScrollController()
    }
    
    func callScrollController() {
        let vc = ScrollViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: - Collection View
    
    func CollSettings(){
        collectionView.dataSource = self
        collectionView.delegate = self
        
        self.collectionView.register(UINib(nibName: "ItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
        
        if let flowLayout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout {
            let screenSize: CGRect = UIScreen.main.bounds
            let cellwidth = screenSize.width / numberOfColumns - 15
            flowLayout.itemSize = CGSize(width: cellwidth, height: cellwidth)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = items[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! ItemCollectionViewCell
        cell.image.image = UIImage(named: item.image!)
        cell.textLabel.text = item.title
        return cell
    }

}
