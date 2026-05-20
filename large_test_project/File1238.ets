@Component
struct TestComponent1238 {
  @State message: string = "Hello from component 1238"

  aboutToAppear() {
    console.log("Component 1238 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
