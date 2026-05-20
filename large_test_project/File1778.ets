@Component
struct TestComponent1778 {
  @State message: string = "Hello from component 1778"

  aboutToAppear() {
    console.log("Component 1778 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
