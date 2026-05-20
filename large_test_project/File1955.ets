@Component
struct TestComponent1955 {
  @State message: string = "Hello from component 1955"

  aboutToAppear() {
    console.log("Component 1955 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
