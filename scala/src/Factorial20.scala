object Factorial20 {

  def main: Unit = {
    var result = 1
    for(i <- 2 to 20) {
      result *= i
    }
  }

}
