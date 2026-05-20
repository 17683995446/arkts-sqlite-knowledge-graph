@Component
struct TestComponent507 {
  @State message: string = "Hello from component 507"

  aboutToAppear() {
    console.log("Component 507 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
