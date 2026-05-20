@Component
struct TestComponent503 {
  @State message: string = "Hello from component 503"

  aboutToAppear() {
    console.log("Component 503 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
