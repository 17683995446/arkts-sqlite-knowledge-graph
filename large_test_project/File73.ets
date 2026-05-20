@Component
struct TestComponent73 {
  @State message: string = "Hello from component 73"

  aboutToAppear() {
    console.log("Component 73 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
