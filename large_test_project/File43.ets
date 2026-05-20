@Component
struct TestComponent43 {
  @State message: string = "Hello from component 43"

  aboutToAppear() {
    console.log("Component 43 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
