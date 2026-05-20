@Component
struct TestComponent286 {
  @State message: string = "Hello from component 286"

  aboutToAppear() {
    console.log("Component 286 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
