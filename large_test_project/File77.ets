@Component
struct TestComponent77 {
  @State message: string = "Hello from component 77"

  aboutToAppear() {
    console.log("Component 77 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
