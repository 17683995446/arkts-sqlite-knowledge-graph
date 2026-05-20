@Component
struct TestComponent1932 {
  @State message: string = "Hello from component 1932"

  aboutToAppear() {
    console.log("Component 1932 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
