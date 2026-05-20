@Component
struct TestComponent1659 {
  @State message: string = "Hello from component 1659"

  aboutToAppear() {
    console.log("Component 1659 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
