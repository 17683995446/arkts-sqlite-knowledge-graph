@Component
struct TestComponent1899 {
  @State message: string = "Hello from component 1899"

  aboutToAppear() {
    console.log("Component 1899 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
