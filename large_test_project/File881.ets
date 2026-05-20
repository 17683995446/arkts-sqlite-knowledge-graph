@Component
struct TestComponent881 {
  @State message: string = "Hello from component 881"

  aboutToAppear() {
    console.log("Component 881 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
