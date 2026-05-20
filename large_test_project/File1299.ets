@Component
struct TestComponent1299 {
  @State message: string = "Hello from component 1299"

  aboutToAppear() {
    console.log("Component 1299 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
