@Component
struct TestComponent1810 {
  @State message: string = "Hello from component 1810"

  aboutToAppear() {
    console.log("Component 1810 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
