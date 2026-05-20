@Component
struct TestComponent1643 {
  @State message: string = "Hello from component 1643"

  aboutToAppear() {
    console.log("Component 1643 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
