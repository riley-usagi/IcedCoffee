import Foundation

struct Geometry {
  
  /// Точка в пространстве на экране с учётом угла от центра
  ///
  /// - Parameters:
  ///   - angle: Угол
  ///   - circle: Круг
  /// - Returns: Точка с координатами
  func point(in angle: CGFloat, of circle: CircleFigure) -> CGPoint {
    
    let x = circle.radius * cos(angle) + circle.origin.x
    let y = circle.radius * sin(angle) + circle.origin.y
    
    let point = CGPoint(x: x, y: y)
    
    return point
  }
}

extension CGRect {
  
  /// Центр прямоугольника
  var center: CGPoint {
    return CGPoint(x: midX, y: midY)
  }
}
