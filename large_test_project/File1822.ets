@Component
struct TestComponent1822 {
  @State message: string = "Hello from component 1822"

  aboutToAppear() {
    console.log("Component 1822 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
