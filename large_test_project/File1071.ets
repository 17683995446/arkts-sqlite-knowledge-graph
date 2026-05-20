@Component
struct TestComponent1071 {
  @State message: string = "Hello from component 1071"

  aboutToAppear() {
    console.log("Component 1071 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
