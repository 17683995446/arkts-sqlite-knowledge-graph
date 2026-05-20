@Component
struct TestComponent1602 {
  @State message: string = "Hello from component 1602"

  aboutToAppear() {
    console.log("Component 1602 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
