@Component
struct TestComponent333 {
  @State message: string = "Hello from component 333"

  aboutToAppear() {
    console.log("Component 333 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
