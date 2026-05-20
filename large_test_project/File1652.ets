@Component
struct TestComponent1652 {
  @State message: string = "Hello from component 1652"

  aboutToAppear() {
    console.log("Component 1652 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
