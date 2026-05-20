@Component
struct TestComponent1556 {
  @State message: string = "Hello from component 1556"

  aboutToAppear() {
    console.log("Component 1556 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
