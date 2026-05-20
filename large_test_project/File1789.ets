@Component
struct TestComponent1789 {
  @State message: string = "Hello from component 1789"

  aboutToAppear() {
    console.log("Component 1789 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
