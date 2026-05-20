@Component
struct TestComponent141 {
  @State message: string = "Hello from component 141"

  aboutToAppear() {
    console.log("Component 141 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
