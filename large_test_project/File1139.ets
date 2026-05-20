@Component
struct TestComponent1139 {
  @State message: string = "Hello from component 1139"

  aboutToAppear() {
    console.log("Component 1139 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
