@Component
struct TestComponent1256 {
  @State message: string = "Hello from component 1256"

  aboutToAppear() {
    console.log("Component 1256 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
