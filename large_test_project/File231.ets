@Component
struct TestComponent231 {
  @State message: string = "Hello from component 231"

  aboutToAppear() {
    console.log("Component 231 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
