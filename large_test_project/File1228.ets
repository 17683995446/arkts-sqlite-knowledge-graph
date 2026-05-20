@Component
struct TestComponent1228 {
  @State message: string = "Hello from component 1228"

  aboutToAppear() {
    console.log("Component 1228 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
