@Component
struct TestComponent183 {
  @State message: string = "Hello from component 183"

  aboutToAppear() {
    console.log("Component 183 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
