@Component
struct TestComponent1715 {
  @State message: string = "Hello from component 1715"

  aboutToAppear() {
    console.log("Component 1715 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
