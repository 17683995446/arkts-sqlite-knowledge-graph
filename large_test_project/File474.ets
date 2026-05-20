@Component
struct TestComponent474 {
  @State message: string = "Hello from component 474"

  aboutToAppear() {
    console.log("Component 474 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
