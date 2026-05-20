@Component
struct TestComponent335 {
  @State message: string = "Hello from component 335"

  aboutToAppear() {
    console.log("Component 335 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
