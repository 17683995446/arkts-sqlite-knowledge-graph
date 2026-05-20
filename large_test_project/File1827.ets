@Component
struct TestComponent1827 {
  @State message: string = "Hello from component 1827"

  aboutToAppear() {
    console.log("Component 1827 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
