@Component
struct TestComponent64 {
  @State message: string = "Hello from component 64"

  aboutToAppear() {
    console.log("Component 64 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
