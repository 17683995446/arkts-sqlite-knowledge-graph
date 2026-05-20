@Component
struct TestComponent618 {
  @State message: string = "Hello from component 618"

  aboutToAppear() {
    console.log("Component 618 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
