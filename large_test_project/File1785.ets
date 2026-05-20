@Component
struct TestComponent1785 {
  @State message: string = "Hello from component 1785"

  aboutToAppear() {
    console.log("Component 1785 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
