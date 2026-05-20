@Component
struct TestComponent1635 {
  @State message: string = "Hello from component 1635"

  aboutToAppear() {
    console.log("Component 1635 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
