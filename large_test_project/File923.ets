@Component
struct TestComponent923 {
  @State message: string = "Hello from component 923"

  aboutToAppear() {
    console.log("Component 923 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
