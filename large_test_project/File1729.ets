@Component
struct TestComponent1729 {
  @State message: string = "Hello from component 1729"

  aboutToAppear() {
    console.log("Component 1729 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
