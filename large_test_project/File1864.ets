@Component
struct TestComponent1864 {
  @State message: string = "Hello from component 1864"

  aboutToAppear() {
    console.log("Component 1864 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
