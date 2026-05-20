@Component
struct TestComponent1029 {
  @State message: string = "Hello from component 1029"

  aboutToAppear() {
    console.log("Component 1029 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
