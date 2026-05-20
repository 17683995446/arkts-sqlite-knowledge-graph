@Component
struct TestComponent1552 {
  @State message: string = "Hello from component 1552"

  aboutToAppear() {
    console.log("Component 1552 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
