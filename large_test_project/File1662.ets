@Component
struct TestComponent1662 {
  @State message: string = "Hello from component 1662"

  aboutToAppear() {
    console.log("Component 1662 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
