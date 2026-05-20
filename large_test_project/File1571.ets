@Component
struct TestComponent1571 {
  @State message: string = "Hello from component 1571"

  aboutToAppear() {
    console.log("Component 1571 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
