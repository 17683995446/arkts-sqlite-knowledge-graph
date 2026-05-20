@Component
struct TestComponent1527 {
  @State message: string = "Hello from component 1527"

  aboutToAppear() {
    console.log("Component 1527 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
