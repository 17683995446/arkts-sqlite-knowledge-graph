@Component
struct TestComponent509 {
  @State message: string = "Hello from component 509"

  aboutToAppear() {
    console.log("Component 509 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
