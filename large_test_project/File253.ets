@Component
struct TestComponent253 {
  @State message: string = "Hello from component 253"

  aboutToAppear() {
    console.log("Component 253 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
