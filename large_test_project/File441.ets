@Component
struct TestComponent441 {
  @State message: string = "Hello from component 441"

  aboutToAppear() {
    console.log("Component 441 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
