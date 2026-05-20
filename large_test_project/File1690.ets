@Component
struct TestComponent1690 {
  @State message: string = "Hello from component 1690"

  aboutToAppear() {
    console.log("Component 1690 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
