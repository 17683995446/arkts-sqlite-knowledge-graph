@Component
struct TestComponent1867 {
  @State message: string = "Hello from component 1867"

  aboutToAppear() {
    console.log("Component 1867 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
