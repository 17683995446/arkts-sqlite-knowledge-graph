@Component
struct TestComponent1502 {
  @State message: string = "Hello from component 1502"

  aboutToAppear() {
    console.log("Component 1502 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
