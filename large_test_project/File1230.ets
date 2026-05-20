@Component
struct TestComponent1230 {
  @State message: string = "Hello from component 1230"

  aboutToAppear() {
    console.log("Component 1230 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
