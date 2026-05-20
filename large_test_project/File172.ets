@Component
struct TestComponent172 {
  @State message: string = "Hello from component 172"

  aboutToAppear() {
    console.log("Component 172 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
