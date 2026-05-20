@Component
struct TestComponent1614 {
  @State message: string = "Hello from component 1614"

  aboutToAppear() {
    console.log("Component 1614 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
