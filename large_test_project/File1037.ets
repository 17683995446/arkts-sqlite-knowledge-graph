@Component
struct TestComponent1037 {
  @State message: string = "Hello from component 1037"

  aboutToAppear() {
    console.log("Component 1037 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
