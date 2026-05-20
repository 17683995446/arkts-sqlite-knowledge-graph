@Component
struct TestComponent1240 {
  @State message: string = "Hello from component 1240"

  aboutToAppear() {
    console.log("Component 1240 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
