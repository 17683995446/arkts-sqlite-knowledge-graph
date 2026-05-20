@Component
struct TestComponent1876 {
  @State message: string = "Hello from component 1876"

  aboutToAppear() {
    console.log("Component 1876 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
