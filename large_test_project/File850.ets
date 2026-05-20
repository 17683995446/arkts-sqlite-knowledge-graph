@Component
struct TestComponent850 {
  @State message: string = "Hello from component 850"

  aboutToAppear() {
    console.log("Component 850 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
