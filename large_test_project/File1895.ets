@Component
struct TestComponent1895 {
  @State message: string = "Hello from component 1895"

  aboutToAppear() {
    console.log("Component 1895 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
