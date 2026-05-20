@Component
struct TestComponent488 {
  @State message: string = "Hello from component 488"

  aboutToAppear() {
    console.log("Component 488 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
