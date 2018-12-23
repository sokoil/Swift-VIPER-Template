//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  SOKOIL VIPER Template generated by Michail Vdovin
//

class ___VARIABLE_productName:identifier___Assembler: Assembly {
    
    func assemble(container: Container) {
        container.storyboardInitCompleted(___VARIABLE_productName:identifier___ViewController.self) { r, viewController in
            let apiDatasource = TempApiDatasource()
            let repository = TempRepository()
            let interactor = ___VARIABLE_productName:identifier___Interactor()
            let presenter = ___VARIABLE_productName:identifier___Presenter()
            let router = ___VARIABLE_productName:identifier___Router()
            repository.apiDatasource = apiDatasource
            interactor.tempRepository = repository
            interactor.presenter = presenter
            presenter.interactor = interactor
            presenter.router = router
            presenter.view = viewController
            router.transitionHandler = viewController
            viewController.presenter = presenter
        }
    }
}
