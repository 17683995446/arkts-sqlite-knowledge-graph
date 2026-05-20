@Component
struct TestComponent1210 {
  @State message: string = "Hello from component 1210"

  aboutToAppear() {
    console.log("Component 1210 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
