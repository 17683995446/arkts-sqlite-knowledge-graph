@Component
struct TestComponent703 {
  @State message: string = "Hello from component 703"

  aboutToAppear() {
    console.log("Component 703 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
