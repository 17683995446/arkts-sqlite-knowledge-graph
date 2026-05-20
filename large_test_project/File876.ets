@Component
struct TestComponent876 {
  @State message: string = "Hello from component 876"

  aboutToAppear() {
    console.log("Component 876 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
