@Component
struct TestComponent519 {
  @State message: string = "Hello from component 519"

  aboutToAppear() {
    console.log("Component 519 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
