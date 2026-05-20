@Component
struct TestComponent1567 {
  @State message: string = "Hello from component 1567"

  aboutToAppear() {
    console.log("Component 1567 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
