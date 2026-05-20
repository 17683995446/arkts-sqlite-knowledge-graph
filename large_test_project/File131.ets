@Component
struct TestComponent131 {
  @State message: string = "Hello from component 131"

  aboutToAppear() {
    console.log("Component 131 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
