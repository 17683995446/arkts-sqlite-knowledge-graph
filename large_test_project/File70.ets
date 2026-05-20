@Component
struct TestComponent70 {
  @State message: string = "Hello from component 70"

  aboutToAppear() {
    console.log("Component 70 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
