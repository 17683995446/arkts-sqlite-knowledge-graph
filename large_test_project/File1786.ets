@Component
struct TestComponent1786 {
  @State message: string = "Hello from component 1786"

  aboutToAppear() {
    console.log("Component 1786 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
