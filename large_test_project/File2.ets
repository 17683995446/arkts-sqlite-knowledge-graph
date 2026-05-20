@Component
struct TestComponent2 {
  @State message: string = "Hello from component 2"

  aboutToAppear() {
    console.log("Component 2 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
