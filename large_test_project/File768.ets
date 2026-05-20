@Component
struct TestComponent768 {
  @State message: string = "Hello from component 768"

  aboutToAppear() {
    console.log("Component 768 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
