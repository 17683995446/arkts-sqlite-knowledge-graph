@Component
struct TestComponent23 {
  @State message: string = "Hello from component 23"

  aboutToAppear() {
    console.log("Component 23 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
