@Component
struct TestComponent282 {
  @State message: string = "Hello from component 282"

  aboutToAppear() {
    console.log("Component 282 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
