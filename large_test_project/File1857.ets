@Component
struct TestComponent1857 {
  @State message: string = "Hello from component 1857"

  aboutToAppear() {
    console.log("Component 1857 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
