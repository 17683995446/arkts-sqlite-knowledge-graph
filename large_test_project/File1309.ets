@Component
struct TestComponent1309 {
  @State message: string = "Hello from component 1309"

  aboutToAppear() {
    console.log("Component 1309 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
