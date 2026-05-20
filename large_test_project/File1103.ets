@Component
struct TestComponent1103 {
  @State message: string = "Hello from component 1103"

  aboutToAppear() {
    console.log("Component 1103 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
