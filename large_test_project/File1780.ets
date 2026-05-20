@Component
struct TestComponent1780 {
  @State message: string = "Hello from component 1780"

  aboutToAppear() {
    console.log("Component 1780 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
