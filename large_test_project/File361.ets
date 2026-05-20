@Component
struct TestComponent361 {
  @State message: string = "Hello from component 361"

  aboutToAppear() {
    console.log("Component 361 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
