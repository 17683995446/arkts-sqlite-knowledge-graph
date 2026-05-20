@Component
struct TestComponent1084 {
  @State message: string = "Hello from component 1084"

  aboutToAppear() {
    console.log("Component 1084 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
