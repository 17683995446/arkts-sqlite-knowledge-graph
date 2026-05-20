@Component
struct TestComponent1312 {
  @State message: string = "Hello from component 1312"

  aboutToAppear() {
    console.log("Component 1312 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
