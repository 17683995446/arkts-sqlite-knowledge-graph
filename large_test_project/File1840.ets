@Component
struct TestComponent1840 {
  @State message: string = "Hello from component 1840"

  aboutToAppear() {
    console.log("Component 1840 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
