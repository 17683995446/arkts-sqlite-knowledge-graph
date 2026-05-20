@Component
struct TestComponent1582 {
  @State message: string = "Hello from component 1582"

  aboutToAppear() {
    console.log("Component 1582 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
