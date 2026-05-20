@Component
struct TestComponent54 {
  @State message: string = "Hello from component 54"

  aboutToAppear() {
    console.log("Component 54 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
