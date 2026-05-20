@Component
struct TestComponent936 {
  @State message: string = "Hello from component 936"

  aboutToAppear() {
    console.log("Component 936 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
