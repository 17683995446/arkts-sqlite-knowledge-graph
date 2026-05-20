@Component
struct TestComponent1234 {
  @State message: string = "Hello from component 1234"

  aboutToAppear() {
    console.log("Component 1234 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
