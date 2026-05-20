@Component
struct TestComponent1623 {
  @State message: string = "Hello from component 1623"

  aboutToAppear() {
    console.log("Component 1623 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
