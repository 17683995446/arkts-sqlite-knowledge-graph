@Component
struct TestComponent1676 {
  @State message: string = "Hello from component 1676"

  aboutToAppear() {
    console.log("Component 1676 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
