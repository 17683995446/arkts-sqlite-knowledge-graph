@Component
struct TestComponent1597 {
  @State message: string = "Hello from component 1597"

  aboutToAppear() {
    console.log("Component 1597 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
