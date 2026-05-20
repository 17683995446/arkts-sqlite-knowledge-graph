@Component
struct TestComponent1993 {
  @State message: string = "Hello from component 1993"

  aboutToAppear() {
    console.log("Component 1993 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
