@Component
struct TestComponent1801 {
  @State message: string = "Hello from component 1801"

  aboutToAppear() {
    console.log("Component 1801 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
