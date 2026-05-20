@Component
struct TestComponent663 {
  @State message: string = "Hello from component 663"

  aboutToAppear() {
    console.log("Component 663 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
