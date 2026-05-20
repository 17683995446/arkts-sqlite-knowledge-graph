@Component
struct TestComponent1433 {
  @State message: string = "Hello from component 1433"

  aboutToAppear() {
    console.log("Component 1433 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
