@Component
struct TestComponent1049 {
  @State message: string = "Hello from component 1049"

  aboutToAppear() {
    console.log("Component 1049 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
