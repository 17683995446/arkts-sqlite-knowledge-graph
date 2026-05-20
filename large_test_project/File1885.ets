@Component
struct TestComponent1885 {
  @State message: string = "Hello from component 1885"

  aboutToAppear() {
    console.log("Component 1885 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
