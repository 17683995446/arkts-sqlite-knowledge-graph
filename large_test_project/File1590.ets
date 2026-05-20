@Component
struct TestComponent1590 {
  @State message: string = "Hello from component 1590"

  aboutToAppear() {
    console.log("Component 1590 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
