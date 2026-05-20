@Component
struct TestComponent1031 {
  @State message: string = "Hello from component 1031"

  aboutToAppear() {
    console.log("Component 1031 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
