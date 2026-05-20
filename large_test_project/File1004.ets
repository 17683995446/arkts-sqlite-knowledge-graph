@Component
struct TestComponent1004 {
  @State message: string = "Hello from component 1004"

  aboutToAppear() {
    console.log("Component 1004 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
