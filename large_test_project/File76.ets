@Component
struct TestComponent76 {
  @State message: string = "Hello from component 76"

  aboutToAppear() {
    console.log("Component 76 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
