@Component
struct TestComponent1916 {
  @State message: string = "Hello from component 1916"

  aboutToAppear() {
    console.log("Component 1916 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
