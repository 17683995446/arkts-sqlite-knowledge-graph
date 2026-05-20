@Component
struct TestComponent235 {
  @State message: string = "Hello from component 235"

  aboutToAppear() {
    console.log("Component 235 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
