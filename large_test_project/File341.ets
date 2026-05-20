@Component
struct TestComponent341 {
  @State message: string = "Hello from component 341"

  aboutToAppear() {
    console.log("Component 341 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
