@Component
struct TestComponent1890 {
  @State message: string = "Hello from component 1890"

  aboutToAppear() {
    console.log("Component 1890 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
