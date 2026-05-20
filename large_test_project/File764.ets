@Component
struct TestComponent764 {
  @State message: string = "Hello from component 764"

  aboutToAppear() {
    console.log("Component 764 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
