@Component
struct TestComponent1887 {
  @State message: string = "Hello from component 1887"

  aboutToAppear() {
    console.log("Component 1887 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
