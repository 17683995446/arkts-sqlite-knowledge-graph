@Component
struct TestComponent522 {
  @State message: string = "Hello from component 522"

  aboutToAppear() {
    console.log("Component 522 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
