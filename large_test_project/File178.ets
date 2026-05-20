@Component
struct TestComponent178 {
  @State message: string = "Hello from component 178"

  aboutToAppear() {
    console.log("Component 178 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
