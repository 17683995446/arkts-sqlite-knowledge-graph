@Component
struct TestComponent1665 {
  @State message: string = "Hello from component 1665"

  aboutToAppear() {
    console.log("Component 1665 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
