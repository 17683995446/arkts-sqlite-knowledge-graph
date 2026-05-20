@Component
struct TestComponent1144 {
  @State message: string = "Hello from component 1144"

  aboutToAppear() {
    console.log("Component 1144 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
