@Component
struct TestComponent775 {
  @State message: string = "Hello from component 775"

  aboutToAppear() {
    console.log("Component 775 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
