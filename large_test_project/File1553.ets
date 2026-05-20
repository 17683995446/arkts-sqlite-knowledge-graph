@Component
struct TestComponent1553 {
  @State message: string = "Hello from component 1553"

  aboutToAppear() {
    console.log("Component 1553 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
