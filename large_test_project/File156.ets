@Component
struct TestComponent156 {
  @State message: string = "Hello from component 156"

  aboutToAppear() {
    console.log("Component 156 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
