@Component
struct TestComponent494 {
  @State message: string = "Hello from component 494"

  aboutToAppear() {
    console.log("Component 494 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
