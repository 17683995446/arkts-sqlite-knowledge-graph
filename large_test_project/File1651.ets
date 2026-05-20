@Component
struct TestComponent1651 {
  @State message: string = "Hello from component 1651"

  aboutToAppear() {
    console.log("Component 1651 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
