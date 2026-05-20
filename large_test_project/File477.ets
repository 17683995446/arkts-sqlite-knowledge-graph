@Component
struct TestComponent477 {
  @State message: string = "Hello from component 477"

  aboutToAppear() {
    console.log("Component 477 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
