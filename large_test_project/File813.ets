@Component
struct TestComponent813 {
  @State message: string = "Hello from component 813"

  aboutToAppear() {
    console.log("Component 813 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
