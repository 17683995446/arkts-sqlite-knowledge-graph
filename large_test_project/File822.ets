@Component
struct TestComponent822 {
  @State message: string = "Hello from component 822"

  aboutToAppear() {
    console.log("Component 822 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
