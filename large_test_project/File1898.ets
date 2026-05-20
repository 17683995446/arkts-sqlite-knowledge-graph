@Component
struct TestComponent1898 {
  @State message: string = "Hello from component 1898"

  aboutToAppear() {
    console.log("Component 1898 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
