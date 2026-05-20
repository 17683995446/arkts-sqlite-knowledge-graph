@Component
struct TestComponent1873 {
  @State message: string = "Hello from component 1873"

  aboutToAppear() {
    console.log("Component 1873 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
