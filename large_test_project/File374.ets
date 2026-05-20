@Component
struct TestComponent374 {
  @State message: string = "Hello from component 374"

  aboutToAppear() {
    console.log("Component 374 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
