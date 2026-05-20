@Component
struct TestComponent840 {
  @State message: string = "Hello from component 840"

  aboutToAppear() {
    console.log("Component 840 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
