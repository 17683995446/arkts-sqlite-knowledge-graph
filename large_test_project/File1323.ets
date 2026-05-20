@Component
struct TestComponent1323 {
  @State message: string = "Hello from component 1323"

  aboutToAppear() {
    console.log("Component 1323 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
