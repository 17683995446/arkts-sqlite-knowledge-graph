@Component
struct TestComponent1989 {
  @State message: string = "Hello from component 1989"

  aboutToAppear() {
    console.log("Component 1989 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
