@Component
struct TestComponent1213 {
  @State message: string = "Hello from component 1213"

  aboutToAppear() {
    console.log("Component 1213 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
