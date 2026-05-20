@Component
struct TestComponent1498 {
  @State message: string = "Hello from component 1498"

  aboutToAppear() {
    console.log("Component 1498 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
