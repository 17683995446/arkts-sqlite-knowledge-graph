@Component
struct TestComponent1509 {
  @State message: string = "Hello from component 1509"

  aboutToAppear() {
    console.log("Component 1509 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
