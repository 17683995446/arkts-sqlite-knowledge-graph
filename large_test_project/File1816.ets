@Component
struct TestComponent1816 {
  @State message: string = "Hello from component 1816"

  aboutToAppear() {
    console.log("Component 1816 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
