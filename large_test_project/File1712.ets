@Component
struct TestComponent1712 {
  @State message: string = "Hello from component 1712"

  aboutToAppear() {
    console.log("Component 1712 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
