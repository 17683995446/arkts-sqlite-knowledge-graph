@Component
struct TestComponent1063 {
  @State message: string = "Hello from component 1063"

  aboutToAppear() {
    console.log("Component 1063 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
