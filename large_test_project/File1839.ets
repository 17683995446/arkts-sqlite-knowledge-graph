@Component
struct TestComponent1839 {
  @State message: string = "Hello from component 1839"

  aboutToAppear() {
    console.log("Component 1839 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
