@Component
struct TestComponent0 {
  @State message: string = "Hello from component 0"

  aboutToAppear() {
    console.log("Component 0 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
