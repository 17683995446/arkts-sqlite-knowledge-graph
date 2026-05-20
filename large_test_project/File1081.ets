@Component
struct TestComponent1081 {
  @State message: string = "Hello from component 1081"

  aboutToAppear() {
    console.log("Component 1081 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
