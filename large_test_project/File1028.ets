@Component
struct TestComponent1028 {
  @State message: string = "Hello from component 1028"

  aboutToAppear() {
    console.log("Component 1028 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
