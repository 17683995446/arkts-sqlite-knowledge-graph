@Component
struct TestComponent1297 {
  @State message: string = "Hello from component 1297"

  aboutToAppear() {
    console.log("Component 1297 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
