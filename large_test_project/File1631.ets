@Component
struct TestComponent1631 {
  @State message: string = "Hello from component 1631"

  aboutToAppear() {
    console.log("Component 1631 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
