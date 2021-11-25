//
//  Constants.swift
//  MusicTribe
//
//  Created by Sakshi Jain on 24/11/21.
//

import Foundation
import UIKit

let BORDER_WIDTH = 1.0 as CGFloat

let IS_IPAD = UIDevice.current.userInterfaceIdiom == .pad

let MEDIUM_FONT_SIZE = UIFont.systemFont(ofSize: IS_IPAD ? 15 : 11)

let MEDIUM_BOLD_FONT_SIZE = UIFont.boldSystemFont(ofSize: IS_IPAD ? 15 : 11)

let DISABLED_STATE_ALPHA: Float = 0.3
