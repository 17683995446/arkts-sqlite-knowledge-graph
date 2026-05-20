@Component
struct TestComponent951 {
  @State message: string = "Hello from component 951"

  aboutToAppear() {
    console.log("Component 951 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
