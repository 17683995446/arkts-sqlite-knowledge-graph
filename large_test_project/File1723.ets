@Component
struct TestComponent1723 {
  @State message: string = "Hello from component 1723"

  aboutToAppear() {
    console.log("Component 1723 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
