@Component
struct TestComponent480 {
  @State message: string = "Hello from component 480"

  aboutToAppear() {
    console.log("Component 480 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
