@Component
struct TestComponent11 {
  @State message: string = "Hello from component 11"

  aboutToAppear() {
    console.log("Component 11 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
