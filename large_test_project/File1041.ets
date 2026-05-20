@Component
struct TestComponent1041 {
  @State message: string = "Hello from component 1041"

  aboutToAppear() {
    console.log("Component 1041 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
