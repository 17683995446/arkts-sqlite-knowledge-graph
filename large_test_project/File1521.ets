@Component
struct TestComponent1521 {
  @State message: string = "Hello from component 1521"

  aboutToAppear() {
    console.log("Component 1521 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
