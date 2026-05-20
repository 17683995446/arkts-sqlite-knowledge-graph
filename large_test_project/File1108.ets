@Component
struct TestComponent1108 {
  @State message: string = "Hello from component 1108"

  aboutToAppear() {
    console.log("Component 1108 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
