//
//  PaymentHistoryTableViewCell.swift
//  QRIS App
//
//  Created by Ariesta APP on 25/01/24.
//

import UIKit

public class PaymentHistoryTableViewCell: UITableViewCell {

    @IBOutlet weak var merchantLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    public static let nib = UINib(nibName: "PaymentHistoryTableViewCell", bundle: Bundle.module)
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override public func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
