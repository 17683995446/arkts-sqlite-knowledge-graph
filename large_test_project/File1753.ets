@Component
struct TestComponent1753 {
  @State message: string = "Hello from component 1753"

  aboutToAppear() {
    console.log("Component 1753 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
