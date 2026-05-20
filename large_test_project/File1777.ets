@Component
struct TestComponent1777 {
  @State message: string = "Hello from component 1777"

  aboutToAppear() {
    console.log("Component 1777 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
