@Component
struct TestComponent1459 {
  @State message: string = "Hello from component 1459"

  aboutToAppear() {
    console.log("Component 1459 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
