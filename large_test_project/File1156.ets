@Component
struct TestComponent1156 {
  @State message: string = "Hello from component 1156"

  aboutToAppear() {
    console.log("Component 1156 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
