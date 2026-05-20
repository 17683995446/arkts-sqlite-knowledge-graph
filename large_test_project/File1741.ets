@Component
struct TestComponent1741 {
  @State message: string = "Hello from component 1741"

  aboutToAppear() {
    console.log("Component 1741 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
