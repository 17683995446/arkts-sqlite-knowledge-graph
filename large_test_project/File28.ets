@Component
struct TestComponent28 {
  @State message: string = "Hello from component 28"

  aboutToAppear() {
    console.log("Component 28 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
