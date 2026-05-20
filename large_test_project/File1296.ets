@Component
struct TestComponent1296 {
  @State message: string = "Hello from component 1296"

  aboutToAppear() {
    console.log("Component 1296 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
