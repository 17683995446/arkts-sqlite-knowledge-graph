@Component
struct TestComponent111 {
  @State message: string = "Hello from component 111"

  aboutToAppear() {
    console.log("Component 111 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
