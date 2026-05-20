@Component
struct TestComponent1776 {
  @State message: string = "Hello from component 1776"

  aboutToAppear() {
    console.log("Component 1776 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
