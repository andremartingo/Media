//
// Copyright (c) Vatsal Manot
//

#if canImport(CoreVideo) && canImport(VideoToolbox)

import CoreVideo
//import SwiftUIX
import VideoToolbox

extension CVImageBuffer {
    public var _cgImage: CGImage? {
        var cgImage: CGImage!
        
        VTCreateCGImageFromCVPixelBuffer(self, options: nil, imageOut: &cgImage)
        
        return cgImage
    }
}

#endif
