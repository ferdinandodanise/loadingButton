# Project Title

This is a simple extension of UIButton for make a loading circle inside and in the center of your UIButton. You can also choose color when you start a loading.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Installing

Just download ExtensionUIButton.swift and add on your project. This an extension of UIButton, so allow you to have the methods on your UIButton outlets.

Ex.

// This your UIButton outlet
@IBOutlet weak var yourButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
      //Here you can call startLoading method and choose the color for yout loading circle
       yourButton.startLoading(color: .red)
  }
  
  //For stop the animation just call stopLoading() 

yourButton.stopLoading()



## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.



## Authors

* **Ferdinando Danise** - *Initial work* - [LoadingButton](https://github.com/fdanise)


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Final

Enjoy with my loadingCircle

