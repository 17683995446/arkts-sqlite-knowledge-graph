@Component
struct TestComponent612 {
  @State message: string = "Hello from component 612"

  aboutToAppear() {
    console.log("Component 612 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
