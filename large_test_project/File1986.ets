@Component
struct TestComponent1986 {
  @State message: string = "Hello from component 1986"

  aboutToAppear() {
    console.log("Component 1986 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
