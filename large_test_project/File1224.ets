@Component
struct TestComponent1224 {
  @State message: string = "Hello from component 1224"

  aboutToAppear() {
    console.log("Component 1224 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
