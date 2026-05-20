@Component
struct TestComponent1219 {
  @State message: string = "Hello from component 1219"

  aboutToAppear() {
    console.log("Component 1219 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
