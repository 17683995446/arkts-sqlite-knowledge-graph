@Component
struct TestComponent453 {
  @State message: string = "Hello from component 453"

  aboutToAppear() {
    console.log("Component 453 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
