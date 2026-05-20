@Component
struct TestComponent1045 {
  @State message: string = "Hello from component 1045"

  aboutToAppear() {
    console.log("Component 1045 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
