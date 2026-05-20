@Component
struct TestComponent298 {
  @State message: string = "Hello from component 298"

  aboutToAppear() {
    console.log("Component 298 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
