@Component
struct TestComponent238 {
  @State message: string = "Hello from component 238"

  aboutToAppear() {
    console.log("Component 238 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
