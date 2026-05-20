@Component
struct TestComponent1918 {
  @State message: string = "Hello from component 1918"

  aboutToAppear() {
    console.log("Component 1918 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
