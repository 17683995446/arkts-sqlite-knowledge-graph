@Component
struct TestComponent1894 {
  @State message: string = "Hello from component 1894"

  aboutToAppear() {
    console.log("Component 1894 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
