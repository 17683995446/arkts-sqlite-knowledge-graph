@Component
struct TestComponent1009 {
  @State message: string = "Hello from component 1009"

  aboutToAppear() {
    console.log("Component 1009 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
