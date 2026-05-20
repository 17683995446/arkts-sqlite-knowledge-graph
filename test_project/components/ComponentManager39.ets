
import { @ohos.storage } from '@ohos.storage';
import { @ohos.router } from '@ohos.router';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';

@Entry
@Component
export struct ComponentService237 {
  @State mStatus29: string = 'value19';
  @State mCount41: boolean = 'true';
  @State mList14: number = 32;

  build() {
        Flex() {
          Button('Item 0')
          TextInput('Item 1')
        }
        Column() {
          Image('Item 0')
          Button('Item 1')
          Image('Item 2')
        }
        Flex() {
          TextInput('Item 0')
        }
        Stack() {
          Text('Item 0')
          List('Item 1')
          TextInput('Item 2')
        }
  }

  onChange18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
