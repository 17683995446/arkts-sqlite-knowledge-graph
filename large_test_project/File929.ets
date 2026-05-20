@Component
struct TestComponent929 {
  @State message: string = "Hello from component 929"

  aboutToAppear() {
    console.log("Component 929 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
