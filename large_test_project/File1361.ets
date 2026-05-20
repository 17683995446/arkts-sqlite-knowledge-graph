@Component
struct TestComponent1361 {
  @State message: string = "Hello from component 1361"

  aboutToAppear() {
    console.log("Component 1361 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
