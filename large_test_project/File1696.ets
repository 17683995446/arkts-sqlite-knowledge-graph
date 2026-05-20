@Component
struct TestComponent1696 {
  @State message: string = "Hello from component 1696"

  aboutToAppear() {
    console.log("Component 1696 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
