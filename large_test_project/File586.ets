@Component
struct TestComponent586 {
  @State message: string = "Hello from component 586"

  aboutToAppear() {
    console.log("Component 586 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
