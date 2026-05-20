@Component
struct TestComponent637 {
  @State message: string = "Hello from component 637"

  aboutToAppear() {
    console.log("Component 637 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
