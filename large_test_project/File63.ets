@Component
struct TestComponent63 {
  @State message: string = "Hello from component 63"

  aboutToAppear() {
    console.log("Component 63 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
