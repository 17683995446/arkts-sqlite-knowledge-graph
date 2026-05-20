@Component
struct TestComponent1301 {
  @State message: string = "Hello from component 1301"

  aboutToAppear() {
    console.log("Component 1301 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
