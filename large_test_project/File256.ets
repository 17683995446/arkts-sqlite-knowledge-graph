@Component
struct TestComponent256 {
  @State message: string = "Hello from component 256"

  aboutToAppear() {
    console.log("Component 256 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
