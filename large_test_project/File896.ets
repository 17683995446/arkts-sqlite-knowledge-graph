@Component
struct TestComponent896 {
  @State message: string = "Hello from component 896"

  aboutToAppear() {
    console.log("Component 896 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
