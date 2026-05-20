@Component
struct TestComponent1892 {
  @State message: string = "Hello from component 1892"

  aboutToAppear() {
    console.log("Component 1892 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
