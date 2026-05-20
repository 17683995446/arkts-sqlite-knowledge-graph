@Component
struct TestComponent1547 {
  @State message: string = "Hello from component 1547"

  aboutToAppear() {
    console.log("Component 1547 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
