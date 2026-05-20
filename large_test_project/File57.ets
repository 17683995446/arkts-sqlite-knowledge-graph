@Component
struct TestComponent57 {
  @State message: string = "Hello from component 57"

  aboutToAppear() {
    console.log("Component 57 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
