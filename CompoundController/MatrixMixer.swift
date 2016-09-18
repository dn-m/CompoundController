//
//  MatrixMixer.swift
//  CompoundController
//
//  Created by James Bean on 9/12/16.
//
//

public struct MatrixMixer {
    
    //fileprivate var matrix: Matrix<Float>
    fileprivate var values: [[Float]]
    
    public init(_ amountInputs: Int, _ amountOutputs: Int) {
        precondition(amountInputs > 0 && amountOutputs > 0)
        self.values = Array(
            repeating: Array(
                repeating: 0.0,
                count: amountOutputs
            ),
            count: amountInputs
        )
        //self.matrix = Matrix(amountRows: <#T##UInt#>, amountColumns: <#T##UInt#>)
    }
    
    public subscript(input: Int, output: Int) -> Float {
        
        get {
            return values[input][output]
        }
        
        set {
            values[input][output] = newValue
        }
    }
}

public func == (lhs: MatrixMixer, rhs: MatrixMixer) -> Bool {
    guard lhs.values.count == rhs.values.count else { return false }
    for i in lhs.values.indices {
        if lhs.values[i] != rhs.values[i] {
            return false
        }
    }
    return true
}
