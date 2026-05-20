@Component
struct TestComponent1709 {
  @State message: string = "Hello from component 1709"

  aboutToAppear() {
    console.log("Component 1709 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
