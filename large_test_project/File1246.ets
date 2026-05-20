@Component
struct TestComponent1246 {
  @State message: string = "Hello from component 1246"

  aboutToAppear() {
    console.log("Component 1246 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
