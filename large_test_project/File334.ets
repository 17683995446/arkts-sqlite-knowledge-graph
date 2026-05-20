@Component
struct TestComponent334 {
  @State message: string = "Hello from component 334"

  aboutToAppear() {
    console.log("Component 334 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
