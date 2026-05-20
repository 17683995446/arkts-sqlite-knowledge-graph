@Component
struct TestComponent550 {
  @State message: string = "Hello from component 550"

  aboutToAppear() {
    console.log("Component 550 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
