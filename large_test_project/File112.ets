@Component
struct TestComponent112 {
  @State message: string = "Hello from component 112"

  aboutToAppear() {
    console.log("Component 112 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
