@Component
struct TestComponent391 {
  @State message: string = "Hello from component 391"

  aboutToAppear() {
    console.log("Component 391 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
