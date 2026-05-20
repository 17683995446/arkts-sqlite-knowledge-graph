@Component
struct TestComponent1677 {
  @State message: string = "Hello from component 1677"

  aboutToAppear() {
    console.log("Component 1677 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
