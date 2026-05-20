@Component
struct TestComponent643 {
  @State message: string = "Hello from component 643"

  aboutToAppear() {
    console.log("Component 643 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
