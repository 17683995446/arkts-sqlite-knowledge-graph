@Component
struct TestComponent1714 {
  @State message: string = "Hello from component 1714"

  aboutToAppear() {
    console.log("Component 1714 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
