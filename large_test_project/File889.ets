@Component
struct TestComponent889 {
  @State message: string = "Hello from component 889"

  aboutToAppear() {
    console.log("Component 889 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
