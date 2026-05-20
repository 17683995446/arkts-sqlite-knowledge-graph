@Component
struct TestComponent1428 {
  @State message: string = "Hello from component 1428"

  aboutToAppear() {
    console.log("Component 1428 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
