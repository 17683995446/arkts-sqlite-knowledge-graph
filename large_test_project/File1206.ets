@Component
struct TestComponent1206 {
  @State message: string = "Hello from component 1206"

  aboutToAppear() {
    console.log("Component 1206 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
