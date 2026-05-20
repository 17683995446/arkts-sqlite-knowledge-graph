@Component
struct TestComponent1403 {
  @State message: string = "Hello from component 1403"

  aboutToAppear() {
    console.log("Component 1403 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
