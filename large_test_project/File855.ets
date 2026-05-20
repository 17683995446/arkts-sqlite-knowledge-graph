@Component
struct TestComponent855 {
  @State message: string = "Hello from component 855"

  aboutToAppear() {
    console.log("Component 855 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
