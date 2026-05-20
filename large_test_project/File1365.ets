@Component
struct TestComponent1365 {
  @State message: string = "Hello from component 1365"

  aboutToAppear() {
    console.log("Component 1365 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
