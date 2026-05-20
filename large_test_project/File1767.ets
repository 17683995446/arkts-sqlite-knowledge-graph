@Component
struct TestComponent1767 {
  @State message: string = "Hello from component 1767"

  aboutToAppear() {
    console.log("Component 1767 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
