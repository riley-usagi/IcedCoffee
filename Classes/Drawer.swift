import Foundation

/// Объект кольца (для последующего расчёта точек на кольце)
struct CircleFigure {
  var origin = CGPoint.zero
  var radius: CGFloat = 0
  
  public init(origin: CGPoint, radius: CGFloat) {
    assert(radius >= 0, NSLocalizedString("Illegal radius value", comment: ""))
    
    self.origin = origin
    self.radius = radius
  }
}

/// Рисовальщик
struct Drawer {
  
  /// Создаёт заготовку под круг (только логика объекта, без видимой части)
  ///
  /// - Parameters:
  ///   - radius: Радиус круга
  ///   - origin: Точка отсчёта (центр)
  /// - Returns: Заготовка под круглый слой
  private static func circleFigure(radius: CGFloat, origin: CGPoint) -> CAShapeLayer {
    let layer       = CAShapeLayer()
    layer.bounds    = CGRect(x: 0, y: 0, width: radius * 2, height: radius * 2)
    layer.position  = origin
    
    let center  = CGPoint(x: radius, y: radius)
    let path    = UIBezierPath(arcCenter: center, radius: radius, startAngle: 0, endAngle: 2 * .pi, clockwise: true)
    layer.path  = path.cgPath
    
    return layer
  }
  
  /// Создаёт визуальную часть кольца
  ///
  /// - Parameters:
  ///   - radius: Радиус кольца
  ///   - origin: Точка отсчёта (центр)
  ///   - color: Цвет кольца
  /// - Returns: Кольцевой слой
  static func circle(radius: CGFloat, origin: CGPoint) -> CAShapeLayer {
    let circleLayer = self.circleFigure(radius: radius, origin: origin)
    
    // Прозрачный круг
    circleLayer.fillColor   = UIColor.clear.cgColor
    
    // Цвет кольца
    circleLayer.strokeColor = #colorLiteral(red: 0.2862745098, green: 0.6901960784, blue: 0.7803921569, alpha: 1)
    
    // Толщина рамки кольца
    circleLayer.lineWidth   = 1.0
    
    return circleLayer
  }
}
