@Component
struct TestComponent1766 {
  @State message: string = "Hello from component 1766"

  aboutToAppear() {
    console.log("Component 1766 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
