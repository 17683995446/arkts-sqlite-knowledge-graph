@Component
struct TestComponent1934 {
  @State message: string = "Hello from component 1934"

  aboutToAppear() {
    console.log("Component 1934 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
