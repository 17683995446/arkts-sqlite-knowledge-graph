@Component
struct TestComponent1507 {
  @State message: string = "Hello from component 1507"

  aboutToAppear() {
    console.log("Component 1507 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
