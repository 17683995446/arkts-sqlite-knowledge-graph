@Component
struct TestComponent1858 {
  @State message: string = "Hello from component 1858"

  aboutToAppear() {
    console.log("Component 1858 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
