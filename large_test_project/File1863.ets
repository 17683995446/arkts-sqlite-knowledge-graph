@Component
struct TestComponent1863 {
  @State message: string = "Hello from component 1863"

  aboutToAppear() {
    console.log("Component 1863 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
