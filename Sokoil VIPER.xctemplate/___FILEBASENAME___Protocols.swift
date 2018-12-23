//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  SOKOIL VIPER Template generated by Michail Vdovin
//

import Foundation

//MARK: Module - Input
protocol ___VARIABLE_productName:identifier___Input: class {
    func configure(data: String)
}
//MARK: Assembler -
protocol ___VARIABLE_productName:identifier___AssemblerProtocol {
}
//MARK: Presenter -
protocol ___VARIABLE_productName:identifier___PresenterProtocol: ___VARIABLE_productName:identifier___Input {
    var view: ___VARIABLE_productName:identifier___ViewProtocol? { get set }
    var interactor: ___VARIABLE_productName:identifier___InteractorInputProtocol? { get set }
    var router: ___VARIABLE_productName:identifier___RouterProtocol? { get set }
    func navigate()
    func loadData()
}
//MARK: Interactor - Output
protocol ___VARIABLE_productName:identifier___InteractorOutputProtocol: class {
    func onDataLoaded(data: [TempData])
    func onLoadError(error: BaseErrorHandler.BaseError)
    /* Interactor -> Presenter */
}
//MARK: Interactor - Input
protocol ___VARIABLE_productName:identifier___InteractorInputProtocol: class {
    var presenter: ___VARIABLE_productName:identifier___InteractorOutputProtocol?  { get set }
    func loadData()
    /* Presenter -> Interactor */
}
//MARK: Router
protocol ___VARIABLE_productName:identifier___RouterProtocol: class {
    var transitionHandler: TransitionHandler? { get set }
    func navigate(with data: String)
    /* Presenter -> Router */
}
//MARK: View -
protocol ___VARIABLE_productName:identifier___ViewProtocol: BaseViewProtocol {
    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?  { get set }
    func showData(data: [TempData])
    /* Presenter -> ViewController */
}
