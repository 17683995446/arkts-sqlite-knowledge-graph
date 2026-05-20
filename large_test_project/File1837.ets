@Component
struct TestComponent1837 {
  @State message: string = "Hello from component 1837"

  aboutToAppear() {
    console.log("Component 1837 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
