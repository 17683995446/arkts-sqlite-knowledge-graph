@Component
struct TestComponent1903 {
  @State message: string = "Hello from component 1903"

  aboutToAppear() {
    console.log("Component 1903 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
