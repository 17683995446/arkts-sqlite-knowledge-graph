@Component
struct TestComponent1570 {
  @State message: string = "Hello from component 1570"

  aboutToAppear() {
    console.log("Component 1570 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
