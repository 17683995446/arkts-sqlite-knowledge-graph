@Component
struct TestComponent1404 {
  @State message: string = "Hello from component 1404"

  aboutToAppear() {
    console.log("Component 1404 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
