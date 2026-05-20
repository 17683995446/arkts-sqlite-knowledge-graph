@Component
struct TestComponent1460 {
  @State message: string = "Hello from component 1460"

  aboutToAppear() {
    console.log("Component 1460 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
