@Component
struct TestComponent271 {
  @State message: string = "Hello from component 271"

  aboutToAppear() {
    console.log("Component 271 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
