@Component
struct TestComponent1618 {
  @State message: string = "Hello from component 1618"

  aboutToAppear() {
    console.log("Component 1618 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
