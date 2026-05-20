@Component
struct TestComponent1089 {
  @State message: string = "Hello from component 1089"

  aboutToAppear() {
    console.log("Component 1089 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
