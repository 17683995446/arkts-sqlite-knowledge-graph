@Component
struct TestComponent1520 {
  @State message: string = "Hello from component 1520"

  aboutToAppear() {
    console.log("Component 1520 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
