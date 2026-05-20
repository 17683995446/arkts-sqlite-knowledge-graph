@Component
struct TestComponent165 {
  @State message: string = "Hello from component 165"

  aboutToAppear() {
    console.log("Component 165 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
