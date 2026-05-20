@Component
struct TestComponent1818 {
  @State message: string = "Hello from component 1818"

  aboutToAppear() {
    console.log("Component 1818 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
