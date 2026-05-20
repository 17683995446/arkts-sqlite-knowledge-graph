@Component
struct TestComponent1915 {
  @State message: string = "Hello from component 1915"

  aboutToAppear() {
    console.log("Component 1915 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
