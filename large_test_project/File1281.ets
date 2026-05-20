@Component
struct TestComponent1281 {
  @State message: string = "Hello from component 1281"

  aboutToAppear() {
    console.log("Component 1281 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
