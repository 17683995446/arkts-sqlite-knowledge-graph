@Component
struct TestComponent299 {
  @State message: string = "Hello from component 299"

  aboutToAppear() {
    console.log("Component 299 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
