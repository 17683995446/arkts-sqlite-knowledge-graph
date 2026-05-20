@Component
struct TestComponent608 {
  @State message: string = "Hello from component 608"

  aboutToAppear() {
    console.log("Component 608 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
