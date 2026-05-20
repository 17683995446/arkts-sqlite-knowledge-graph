@Component
struct TestComponent1158 {
  @State message: string = "Hello from component 1158"

  aboutToAppear() {
    console.log("Component 1158 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
