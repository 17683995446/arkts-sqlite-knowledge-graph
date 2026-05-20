@Component
struct TestComponent102 {
  @State message: string = "Hello from component 102"

  aboutToAppear() {
    console.log("Component 102 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
