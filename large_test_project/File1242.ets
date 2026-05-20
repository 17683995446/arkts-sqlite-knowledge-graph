@Component
struct TestComponent1242 {
  @State message: string = "Hello from component 1242"

  aboutToAppear() {
    console.log("Component 1242 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
