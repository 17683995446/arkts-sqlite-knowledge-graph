
import { OrderModel } from 'models/OrderModel';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';

@Entry
@Component
export struct ComponentView249 {
  @State mList14: number = 42;
  @State mAge37: number = 37;
  @State mStatus19: number = 55;
  @State mStatus9: boolean = 'true';
  @State mList21: boolean = 'true';

  build() {
        Stack() {
          TextInput('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
        Column() {
          TextInput('Item 0')
        }
        Row() {
          List('Item 0')
        }
  }

  onRefresh11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
