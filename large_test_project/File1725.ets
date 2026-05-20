@Component
struct TestComponent1725 {
  @State message: string = "Hello from component 1725"

  aboutToAppear() {
    console.log("Component 1725 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
