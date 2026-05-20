@Component
struct TestComponent635 {
  @State message: string = "Hello from component 635"

  aboutToAppear() {
    console.log("Component 635 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
