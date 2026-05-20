@Component
struct TestComponent1870 {
  @State message: string = "Hello from component 1870"

  aboutToAppear() {
    console.log("Component 1870 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
