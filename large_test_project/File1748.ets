@Component
struct TestComponent1748 {
  @State message: string = "Hello from component 1748"

  aboutToAppear() {
    console.log("Component 1748 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
