@Component
struct TestComponent1826 {
  @State message: string = "Hello from component 1826"

  aboutToAppear() {
    console.log("Component 1826 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
