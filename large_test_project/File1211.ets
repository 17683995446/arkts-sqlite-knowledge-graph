@Component
struct TestComponent1211 {
  @State message: string = "Hello from component 1211"

  aboutToAppear() {
    console.log("Component 1211 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
