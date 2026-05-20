@Component
struct TestComponent956 {
  @State message: string = "Hello from component 956"

  aboutToAppear() {
    console.log("Component 956 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
