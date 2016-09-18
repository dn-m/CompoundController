//
//  Matrix.swift
//  CompoundController
//
//  Created by James Bean on 9/18/16.
//
//

public protocol EmptyInitializable {
    init()
}

extension Int: EmptyInitializable { }
extension Float: EmptyInitializable { }
extension Double: EmptyInitializable { }

public struct Matrix<T: EmptyInitializable> {
 
    private let amountRows: UInt
    private let amountColumns: UInt
    
    fileprivate var grid: [T] = []
    
    public init(amountRows: UInt, amountColumns: UInt) {
        self.amountRows = amountRows
        self.amountColumns = amountColumns
        grid = Array(repeating: T(), count: Int(amountRows * amountColumns))
    }
    
    public subscript (row: UInt, column: UInt) -> T {
        
        get {
            return grid[Int((row * column) + column)]
        }
        
        set {
            grid[Int((row * column) + column)] = newValue
        }
    }
}
