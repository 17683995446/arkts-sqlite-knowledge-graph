@Component
struct TestComponent1773 {
  @State message: string = "Hello from component 1773"

  aboutToAppear() {
    console.log("Component 1773 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
