@Component
struct TestComponent1366 {
  @State message: string = "Hello from component 1366"

  aboutToAppear() {
    console.log("Component 1366 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
