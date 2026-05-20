@Component
struct TestComponent94 {
  @State message: string = "Hello from component 94"

  aboutToAppear() {
    console.log("Component 94 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
