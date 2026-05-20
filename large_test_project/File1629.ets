@Component
struct TestComponent1629 {
  @State message: string = "Hello from component 1629"

  aboutToAppear() {
    console.log("Component 1629 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
