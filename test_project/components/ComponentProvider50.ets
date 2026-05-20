
import { CustomerText } from 'common/CustomerText';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { UserModel } from 'models/UserModel';
import { @ohos.storage } from '@ohos.storage';
import { @ohos.promptAction } from '@ohos.promptAction';
import { CartModel } from 'models/CartModel';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';

@State
@Component
export struct ComponentProvider6 {
  @State mStatus9: boolean = 'true';
  @State mAge8: UserModel[] = 34;
  @State mAge33: number = 99;
  @State mStatus48: string = 'value10';

  build() {
        Stack() {
          List('Item 0')
          Image('Item 1')
          Image('Item 2')
        }
        Stack() {
          List('Item 0')
          TextInput('Item 1')
          Image('Item 2')
        }
        Column() {
          Text('Item 0')
          Button('Item 1')
        }
        Stack() {
          Button('Item 0')
          Text('Item 1')
        }
        Row() {
          Button('Item 0')
        }
  }

  onLoad4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
