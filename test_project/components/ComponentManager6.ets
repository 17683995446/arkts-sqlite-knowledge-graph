
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { ArrayUtils } from 'utils/ArrayUtils';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.storage } from '@ohos.storage';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';

@State
@Component
export struct ComponentProvider584 {
  @State mName49: UserModel[] = 68;
  @State mName44: string = 'value10';
  @State mCount39: UserModel[] = 44;
  @State mAge13: boolean = 'true';
  @State mAge16: boolean = 'true';
  @State mCount2: boolean = 'true';

  build() {
        Column() {
          TextInput('Item 0')
        }
        Row() {
          TextInput('Item 0')
        }
        Flex() {
          Button('Item 0')
          TextInput('Item 1')
        }
  }

  onSubmit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
