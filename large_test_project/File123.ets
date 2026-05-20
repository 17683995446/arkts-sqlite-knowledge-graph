@Component
struct TestComponent123 {
  @State message: string = "Hello from component 123"

  aboutToAppear() {
    console.log("Component 123 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
