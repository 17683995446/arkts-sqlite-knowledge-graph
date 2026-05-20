@Component
struct TestComponent1126 {
  @State message: string = "Hello from component 1126"

  aboutToAppear() {
    console.log("Component 1126 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
