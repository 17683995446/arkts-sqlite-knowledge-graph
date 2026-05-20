@Component
struct TestComponent501 {
  @State message: string = "Hello from component 501"

  aboutToAppear() {
    console.log("Component 501 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
