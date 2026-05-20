@Component
struct TestComponent1838 {
  @State message: string = "Hello from component 1838"

  aboutToAppear() {
    console.log("Component 1838 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
