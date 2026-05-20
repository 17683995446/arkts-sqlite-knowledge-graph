@Component
struct TestComponent1889 {
  @State message: string = "Hello from component 1889"

  aboutToAppear() {
    console.log("Component 1889 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
