@Component
struct TestComponent1888 {
  @State message: string = "Hello from component 1888"

  aboutToAppear() {
    console.log("Component 1888 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
