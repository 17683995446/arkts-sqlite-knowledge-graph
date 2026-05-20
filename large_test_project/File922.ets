@Component
struct TestComponent922 {
  @State message: string = "Hello from component 922"

  aboutToAppear() {
    console.log("Component 922 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
