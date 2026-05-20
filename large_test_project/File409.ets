@Component
struct TestComponent409 {
  @State message: string = "Hello from component 409"

  aboutToAppear() {
    console.log("Component 409 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
