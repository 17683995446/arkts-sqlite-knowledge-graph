@Component
struct TestComponent1763 {
  @State message: string = "Hello from component 1763"

  aboutToAppear() {
    console.log("Component 1763 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
