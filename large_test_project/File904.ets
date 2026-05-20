@Component
struct TestComponent904 {
  @State message: string = "Hello from component 904"

  aboutToAppear() {
    console.log("Component 904 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
