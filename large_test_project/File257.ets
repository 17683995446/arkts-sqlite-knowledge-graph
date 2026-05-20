@Component
struct TestComponent257 {
  @State message: string = "Hello from component 257"

  aboutToAppear() {
    console.log("Component 257 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
