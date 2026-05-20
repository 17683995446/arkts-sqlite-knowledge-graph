@Component
struct TestComponent1896 {
  @State message: string = "Hello from component 1896"

  aboutToAppear() {
    console.log("Component 1896 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
