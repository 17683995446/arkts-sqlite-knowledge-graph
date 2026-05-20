@Component
struct TestComponent1897 {
  @State message: string = "Hello from component 1897"

  aboutToAppear() {
    console.log("Component 1897 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
