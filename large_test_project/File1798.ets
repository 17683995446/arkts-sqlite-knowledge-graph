@Component
struct TestComponent1798 {
  @State message: string = "Hello from component 1798"

  aboutToAppear() {
    console.log("Component 1798 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
