@Component
struct TestComponent640 {
  @State message: string = "Hello from component 640"

  aboutToAppear() {
    console.log("Component 640 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
