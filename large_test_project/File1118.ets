@Component
struct TestComponent1118 {
  @State message: string = "Hello from component 1118"

  aboutToAppear() {
    console.log("Component 1118 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
