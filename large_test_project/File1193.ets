@Component
struct TestComponent1193 {
  @State message: string = "Hello from component 1193"

  aboutToAppear() {
    console.log("Component 1193 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
