@Component
struct TestComponent1077 {
  @State message: string = "Hello from component 1077"

  aboutToAppear() {
    console.log("Component 1077 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
