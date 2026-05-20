@Component
struct TestComponent934 {
  @State message: string = "Hello from component 934"

  aboutToAppear() {
    console.log("Component 934 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
