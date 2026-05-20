@Component
struct TestComponent1997 {
  @State message: string = "Hello from component 1997"

  aboutToAppear() {
    console.log("Component 1997 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
