@Component
struct TestComponent1350 {
  @State message: string = "Hello from component 1350"

  aboutToAppear() {
    console.log("Component 1350 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
