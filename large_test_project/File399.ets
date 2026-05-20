@Component
struct TestComponent399 {
  @State message: string = "Hello from component 399"

  aboutToAppear() {
    console.log("Component 399 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
