@Component
struct TestComponent1830 {
  @State message: string = "Hello from component 1830"

  aboutToAppear() {
    console.log("Component 1830 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
