@Component
struct TestComponent879 {
  @State message: string = "Hello from component 879"

  aboutToAppear() {
    console.log("Component 879 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
