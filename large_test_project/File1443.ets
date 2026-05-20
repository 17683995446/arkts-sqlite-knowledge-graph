@Component
struct TestComponent1443 {
  @State message: string = "Hello from component 1443"

  aboutToAppear() {
    console.log("Component 1443 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
