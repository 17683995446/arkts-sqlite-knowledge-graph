@Component
struct TestComponent1591 {
  @State message: string = "Hello from component 1591"

  aboutToAppear() {
    console.log("Component 1591 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
