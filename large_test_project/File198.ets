@Component
struct TestComponent198 {
  @State message: string = "Hello from component 198"

  aboutToAppear() {
    console.log("Component 198 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
