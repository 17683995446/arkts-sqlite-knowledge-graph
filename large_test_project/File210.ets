@Component
struct TestComponent210 {
  @State message: string = "Hello from component 210"

  aboutToAppear() {
    console.log("Component 210 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
