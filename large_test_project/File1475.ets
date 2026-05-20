@Component
struct TestComponent1475 {
  @State message: string = "Hello from component 1475"

  aboutToAppear() {
    console.log("Component 1475 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
