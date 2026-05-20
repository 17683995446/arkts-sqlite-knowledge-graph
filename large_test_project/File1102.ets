@Component
struct TestComponent1102 {
  @State message: string = "Hello from component 1102"

  aboutToAppear() {
    console.log("Component 1102 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
