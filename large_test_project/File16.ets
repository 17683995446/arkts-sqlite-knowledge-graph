@Component
struct TestComponent16 {
  @State message: string = "Hello from component 16"

  aboutToAppear() {
    console.log("Component 16 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
