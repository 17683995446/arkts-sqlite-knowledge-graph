@Component
struct TestComponent1877 {
  @State message: string = "Hello from component 1877"

  aboutToAppear() {
    console.log("Component 1877 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
