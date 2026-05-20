@Component
struct TestComponent899 {
  @State message: string = "Hello from component 899"

  aboutToAppear() {
    console.log("Component 899 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
