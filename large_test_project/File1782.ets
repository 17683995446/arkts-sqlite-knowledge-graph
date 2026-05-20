@Component
struct TestComponent1782 {
  @State message: string = "Hello from component 1782"

  aboutToAppear() {
    console.log("Component 1782 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
