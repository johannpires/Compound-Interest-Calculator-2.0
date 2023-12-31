//
//  ViewController.swift
//  Compound Interest Calculator 2.0
//
//  Created by Johann Pires on 31/12/2023.
//

import UIKit

class ViewController: UIViewController {

    
    private lazy var backgrounView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
  //      imageView.image = UIImage(named: "background")
        imageView.backgroundColor = UIColor(named: "color2")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    private lazy var headerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 30
        return view
    }()

    private lazy var compoundLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.text = "Compound Interest Calculator"
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()

    private lazy var initialBalanceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.text = "Initial Balance"
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()
    
    private lazy var monthlyContributionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.text = "Monthly Contribution"
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()
    
    private lazy var timePeriodLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.text = "Time Period"
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()
    
    private lazy var rateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.text = "Rate of Interest (p.a.)"
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    
  /*      view.backgroundColor = .red
        
        let customView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.addSubview(customView)*/
    }

    private func setupView() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        view.addSubview(backgrounView)
        view.addSubview(compoundLabel)
        view.addSubview(headerView)
        
        headerView.addSubview(initialBalanceLabel)
        headerView.addSubview(monthlyContributionLabel)
        headerView.addSubview(timePeriodLabel)
        headerView.addSubview(rateLabel)
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            backgrounView.topAnchor.constraint(equalTo: view.topAnchor),
            backgrounView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgrounView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgrounView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            headerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15)
//            headerView.bottomAnchor.constraint(equalTo: rateLabel.bottomAnchor, constant: 60),
        ])
        NSLayoutConstraint.activate([
            compoundLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 2),
            compoundLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            compoundLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            compoundLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        NSLayoutConstraint.activate([
            initialBalanceLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 30),
            initialBalanceLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 20),
            monthlyContributionLabel.topAnchor.constraint(equalTo: initialBalanceLabel.bottomAnchor, constant: 60),
            monthlyContributionLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 20),
            timePeriodLabel.topAnchor.constraint(equalTo: monthlyContributionLabel.bottomAnchor, constant: 60),
            timePeriodLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 20),
            rateLabel.topAnchor.constraint(equalTo: timePeriodLabel.bottomAnchor, constant: 60),
            rateLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 20),
        ])
    }

    
    
}

