@Component
struct TestComponent348 {
  @State message: string = "Hello from component 348"

  aboutToAppear() {
    console.log("Component 348 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
