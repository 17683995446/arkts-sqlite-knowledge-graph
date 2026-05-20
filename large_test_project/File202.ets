@Component
struct TestComponent202 {
  @State message: string = "Hello from component 202"

  aboutToAppear() {
    console.log("Component 202 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
