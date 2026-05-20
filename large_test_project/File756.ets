@Component
struct TestComponent756 {
  @State message: string = "Hello from component 756"

  aboutToAppear() {
    console.log("Component 756 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
