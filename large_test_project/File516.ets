@Component
struct TestComponent516 {
  @State message: string = "Hello from component 516"

  aboutToAppear() {
    console.log("Component 516 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
