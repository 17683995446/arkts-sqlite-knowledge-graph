@Component
struct TestComponent1244 {
  @State message: string = "Hello from component 1244"

  aboutToAppear() {
    console.log("Component 1244 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
