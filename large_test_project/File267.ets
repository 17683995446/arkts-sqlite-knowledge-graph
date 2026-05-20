@Component
struct TestComponent267 {
  @State message: string = "Hello from component 267"

  aboutToAppear() {
    console.log("Component 267 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
