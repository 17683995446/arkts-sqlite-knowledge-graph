@Component
struct TestComponent1708 {
  @State message: string = "Hello from component 1708"

  aboutToAppear() {
    console.log("Component 1708 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
