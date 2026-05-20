@Component
struct TestComponent1549 {
  @State message: string = "Hello from component 1549"

  aboutToAppear() {
    console.log("Component 1549 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
