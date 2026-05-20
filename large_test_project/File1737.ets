@Component
struct TestComponent1737 {
  @State message: string = "Hello from component 1737"

  aboutToAppear() {
    console.log("Component 1737 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
