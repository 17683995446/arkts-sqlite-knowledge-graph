@Component
struct TestComponent1984 {
  @State message: string = "Hello from component 1984"

  aboutToAppear() {
    console.log("Component 1984 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
