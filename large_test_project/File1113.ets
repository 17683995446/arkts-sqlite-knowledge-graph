@Component
struct TestComponent1113 {
  @State message: string = "Hello from component 1113"

  aboutToAppear() {
    console.log("Component 1113 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
