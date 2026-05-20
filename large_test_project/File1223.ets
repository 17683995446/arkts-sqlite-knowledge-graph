@Component
struct TestComponent1223 {
  @State message: string = "Hello from component 1223"

  aboutToAppear() {
    console.log("Component 1223 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
