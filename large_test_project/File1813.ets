@Component
struct TestComponent1813 {
  @State message: string = "Hello from component 1813"

  aboutToAppear() {
    console.log("Component 1813 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
