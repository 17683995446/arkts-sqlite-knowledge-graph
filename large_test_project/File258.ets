@Component
struct TestComponent258 {
  @State message: string = "Hello from component 258"

  aboutToAppear() {
    console.log("Component 258 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
