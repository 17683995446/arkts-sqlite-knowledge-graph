@Component
struct TestComponent1999 {
  @State message: string = "Hello from component 1999"

  aboutToAppear() {
    console.log("Component 1999 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
