@Component
struct TestComponent1307 {
  @State message: string = "Hello from component 1307"

  aboutToAppear() {
    console.log("Component 1307 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
