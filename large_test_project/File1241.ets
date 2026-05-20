@Component
struct TestComponent1241 {
  @State message: string = "Hello from component 1241"

  aboutToAppear() {
    console.log("Component 1241 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
