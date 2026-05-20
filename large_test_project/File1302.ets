@Component
struct TestComponent1302 {
  @State message: string = "Hello from component 1302"

  aboutToAppear() {
    console.log("Component 1302 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
