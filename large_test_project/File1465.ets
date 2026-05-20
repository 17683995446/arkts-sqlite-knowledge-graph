@Component
struct TestComponent1465 {
  @State message: string = "Hello from component 1465"

  aboutToAppear() {
    console.log("Component 1465 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
