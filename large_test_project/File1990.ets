@Component
struct TestComponent1990 {
  @State message: string = "Hello from component 1990"

  aboutToAppear() {
    console.log("Component 1990 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
