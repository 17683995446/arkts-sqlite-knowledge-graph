@Component
struct TestComponent1796 {
  @State message: string = "Hello from component 1796"

  aboutToAppear() {
    console.log("Component 1796 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
