@Component
struct TestComponent1587 {
  @State message: string = "Hello from component 1587"

  aboutToAppear() {
    console.log("Component 1587 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
