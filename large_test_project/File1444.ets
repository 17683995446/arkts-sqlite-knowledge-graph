@Component
struct TestComponent1444 {
  @State message: string = "Hello from component 1444"

  aboutToAppear() {
    console.log("Component 1444 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
