@Component
struct TestComponent1334 {
  @State message: string = "Hello from component 1334"

  aboutToAppear() {
    console.log("Component 1334 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
