@Component
struct TestComponent1641 {
  @State message: string = "Hello from component 1641"

  aboutToAppear() {
    console.log("Component 1641 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
