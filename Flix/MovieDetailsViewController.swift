//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Jada Grant on 2/12/20.
//  Copyright © 2020 Jada Grant. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var descrip: UILabel!
    
    var movie: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTitle.text = movie["title"] as? String
        movieTitle.sizeToFit()
        
        descrip.text = movie["overview"] as? String
        descrip.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        picture.af_setImage(withURL:posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        poster.af_setImage(withURL: backdropUrl!)
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
