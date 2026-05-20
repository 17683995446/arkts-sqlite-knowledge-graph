@Component
struct TestComponent1966 {
  @State message: string = "Hello from component 1966"

  aboutToAppear() {
    console.log("Component 1966 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
