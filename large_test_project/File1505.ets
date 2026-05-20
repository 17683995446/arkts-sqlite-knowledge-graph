@Component
struct TestComponent1505 {
  @State message: string = "Hello from component 1505"

  aboutToAppear() {
    console.log("Component 1505 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
