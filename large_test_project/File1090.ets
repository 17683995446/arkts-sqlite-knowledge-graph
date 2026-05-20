@Component
struct TestComponent1090 {
  @State message: string = "Hello from component 1090"

  aboutToAppear() {
    console.log("Component 1090 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
