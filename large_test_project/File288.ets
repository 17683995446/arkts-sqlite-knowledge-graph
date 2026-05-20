@Component
struct TestComponent288 {
  @State message: string = "Hello from component 288"

  aboutToAppear() {
    console.log("Component 288 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
