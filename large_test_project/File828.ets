@Component
struct TestComponent828 {
  @State message: string = "Hello from component 828"

  aboutToAppear() {
    console.log("Component 828 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
