@Component
struct TestComponent1383 {
  @State message: string = "Hello from component 1383"

  aboutToAppear() {
    console.log("Component 1383 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
