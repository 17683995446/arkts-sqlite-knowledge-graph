@Component
struct TestComponent1489 {
  @State message: string = "Hello from component 1489"

  aboutToAppear() {
    console.log("Component 1489 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
