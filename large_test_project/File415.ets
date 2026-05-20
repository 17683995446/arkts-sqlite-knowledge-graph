@Component
struct TestComponent415 {
  @State message: string = "Hello from component 415"

  aboutToAppear() {
    console.log("Component 415 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
