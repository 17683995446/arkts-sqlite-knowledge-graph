@Component
struct TestComponent1775 {
  @State message: string = "Hello from component 1775"

  aboutToAppear() {
    console.log("Component 1775 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
