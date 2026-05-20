@Component
struct TestComponent1512 {
  @State message: string = "Hello from component 1512"

  aboutToAppear() {
    console.log("Component 1512 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
