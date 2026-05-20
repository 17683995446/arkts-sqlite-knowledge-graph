@Component
struct TestComponent976 {
  @State message: string = "Hello from component 976"

  aboutToAppear() {
    console.log("Component 976 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
