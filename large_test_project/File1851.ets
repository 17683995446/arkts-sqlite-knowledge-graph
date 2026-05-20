@Component
struct TestComponent1851 {
  @State message: string = "Hello from component 1851"

  aboutToAppear() {
    console.log("Component 1851 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
