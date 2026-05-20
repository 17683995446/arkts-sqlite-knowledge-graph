@Component
struct TestComponent1855 {
  @State message: string = "Hello from component 1855"

  aboutToAppear() {
    console.log("Component 1855 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
