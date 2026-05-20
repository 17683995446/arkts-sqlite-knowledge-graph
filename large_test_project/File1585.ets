@Component
struct TestComponent1585 {
  @State message: string = "Hello from component 1585"

  aboutToAppear() {
    console.log("Component 1585 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
