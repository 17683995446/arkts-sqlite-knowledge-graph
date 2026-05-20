@Component
struct TestComponent461 {
  @State message: string = "Hello from component 461"

  aboutToAppear() {
    console.log("Component 461 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
