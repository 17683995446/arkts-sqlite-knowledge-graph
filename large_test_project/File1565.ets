@Component
struct TestComponent1565 {
  @State message: string = "Hello from component 1565"

  aboutToAppear() {
    console.log("Component 1565 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
