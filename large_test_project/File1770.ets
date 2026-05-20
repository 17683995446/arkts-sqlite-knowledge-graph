@Component
struct TestComponent1770 {
  @State message: string = "Hello from component 1770"

  aboutToAppear() {
    console.log("Component 1770 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
