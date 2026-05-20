@Component
struct TestComponent137 {
  @State message: string = "Hello from component 137"

  aboutToAppear() {
    console.log("Component 137 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
