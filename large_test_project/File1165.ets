@Component
struct TestComponent1165 {
  @State message: string = "Hello from component 1165"

  aboutToAppear() {
    console.log("Component 1165 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
