@Component
struct TestComponent1559 {
  @State message: string = "Hello from component 1559"

  aboutToAppear() {
    console.log("Component 1559 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
