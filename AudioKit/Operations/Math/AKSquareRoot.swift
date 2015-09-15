//
//  AKSquareRoot.swift
//  AudioKit
//
//  Created by Aurelius Prochazka on 9/14/15.
//  Copyright © 2015 AudioKit. All rights reserved.
//

import Foundation

/** Square root helper function */
func sqrt(parameter: AKParameter) -> AKSquareRoot {
    return AKSquareRoot(input: parameter)
}

/** Square root of the input signal.
*/
@objc class AKSquareRoot : AKParameter {
    
    // MARK: - Properties
    
    /** Input to the mathematical function */
   private var input = AKParameter()
    
    // MARK: - Initializers
    
    /** Instantiates the square root
    - parameter input: Input signal.
    */
    init(input sourceInput: AKParameter)
    {
        super.init()
        input = sourceInput
        dependencies = [input]
    }
    
    /** Computation of the next value */
    override func compute() {
        leftOutput  = sqrt(input.leftOutput)
        rightOutput = sqrt(input.rightOutput)
    }
    
}