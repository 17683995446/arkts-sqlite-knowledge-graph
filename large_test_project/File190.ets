@Component
struct TestComponent190 {
  @State message: string = "Hello from component 190"

  aboutToAppear() {
    console.log("Component 190 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
