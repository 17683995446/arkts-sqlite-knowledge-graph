@Component
struct TestComponent1212 {
  @State message: string = "Hello from component 1212"

  aboutToAppear() {
    console.log("Component 1212 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
