@Component
struct TestComponent207 {
  @State message: string = "Hello from component 207"

  aboutToAppear() {
    console.log("Component 207 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
