
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { UserModel } from 'models/UserModel';
import { StringUtils } from 'utils/StringUtils';
import { @ohos.hilog } from '@ohos.hilog';
import { ArrayUtils } from 'utils/ArrayUtils';
import { NetworkService } from 'services/NetworkService';

@Prop
@Component
export struct ComponentUtils961 {
  @State mList16: number = 85;
  @State mAge39: number = 54;
  @State mName28: boolean = 'true';

  build() {
        Flex() {
          Image('Item 0')
        }
        Column() {
          Button('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          Button('Item 0')
        }
        Flex() {
          Image('Item 0')
          List('Item 1')
        }
        Flex() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Stack() {
          Image('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
        Stack() {
          Button('Item 0')
          TextInput('Item 1')
        }
        Row() {
          Image('Item 0')
          Text('Item 1')
        }
        Row() {
          Image('Item 0')
        }
  }

  onInit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
