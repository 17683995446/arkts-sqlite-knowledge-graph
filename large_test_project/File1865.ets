@Component
struct TestComponent1865 {
  @State message: string = "Hello from component 1865"

  aboutToAppear() {
    console.log("Component 1865 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
