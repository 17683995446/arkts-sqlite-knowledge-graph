@Component
struct TestComponent1848 {
  @State message: string = "Hello from component 1848"

  aboutToAppear() {
    console.log("Component 1848 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
