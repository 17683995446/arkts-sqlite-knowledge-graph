@Component
struct TestComponent1030 {
  @State message: string = "Hello from component 1030"

  aboutToAppear() {
    console.log("Component 1030 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
