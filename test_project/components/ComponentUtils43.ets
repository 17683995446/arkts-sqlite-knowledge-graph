
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.router } from '@ohos.router';
import { UserModel } from 'models/UserModel';
import { @ohos.hilog } from '@ohos.hilog';

@State
@Component
export struct ComponentView768 {
  @State mName13: number = 24;
  @State mAge39: string = 'value20';
  @State mList32: number = 52;

  build() {
        Column() {
          Button('Item 0')
          Button('Item 1')
          Button('Item 2')
        }
        Column() {
          Text('Item 0')
          Text('Item 1')
        }
        Column() {
          Button('Item 0')
          List('Item 1')
        }
        Stack() {
          Text('Item 0')
        }
        Column() {
          TextInput('Item 0')
          List('Item 1')
        }
  }

  onClick19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
