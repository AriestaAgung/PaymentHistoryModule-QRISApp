//
//  PaymentHistoryPresenter.swift
//  QRIS App
//
//  Created by Ariesta APP on 25/01/24.
//

import Foundation
import TransactionCore

protocol PaymentHistoryProtocol {
    func getPaymentData() -> [TransactionModel?]!
    func fetchPaymentData(completion: @escaping ([TransactionModel?]) -> Void)
}
public class PaymentHistoryPresenter: PaymentHistoryProtocol {
    private var interactor: PaymentHistoryInteractor?
    private var router: PaymentHistoryRouter?
    private var transactionData: [TransactionModel?]! = []
    public init(interactor: PaymentHistoryInteractor? = nil, router: PaymentHistoryRouter? = nil) {
        self.interactor = interactor
        self.router = router
    }
    public func getPaymentData() -> [TransactionModel?]! {
        return transactionData
    }
    public func fetchPaymentData(completion: @escaping ([TransactionModel?]) -> Void) {
        interactor?.getTransaction { transactions in
            self.transactionData = transactions
            completion(transactions)
        }
    }
}
