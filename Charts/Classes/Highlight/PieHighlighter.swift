//
//  PieHighlighter.swift
//  Charts
//
//  Created by Daniel Cohen Gindi on 26/7/15.

//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/Charts
//

import Foundation
import CoreGraphics

@objc(PieChartHighlighter)
public class PieHighlighter: PieRadarHighlighter
{
    public override func closestHighlight(index index: Int, x: CGFloat, y: CGFloat) -> Highlight?
    {
        guard let set = chart?.data?.dataSets[0]
            else { return nil }
        
        guard let entry = set.entryForIndex(index)
            else { return nil }
        
        return Highlight(x: Double(index), y: entry.y, xPx: x, yPx: y, dataSetIndex: 0, axis: set.axisDependency)
    }
}