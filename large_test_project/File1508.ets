@Component
struct TestComponent1508 {
  @State message: string = "Hello from component 1508"

  aboutToAppear() {
    console.log("Component 1508 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
