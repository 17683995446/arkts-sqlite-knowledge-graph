@Component
struct TestComponent1738 {
  @State message: string = "Hello from component 1738"

  aboutToAppear() {
    console.log("Component 1738 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
